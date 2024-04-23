import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider(
        create: (context) => TodoBloc()..add(FetchTodos()),
        child: TodoScreen(),
      ),
    );
  }
}

class Todo {
  final int id;
  final String title;
  final bool completed;

  Todo({
    required this.id,
    required this.title,
    required this.completed,
  });
}

abstract class TodoEvent {}

class FetchTodos extends TodoEvent {}

abstract class TodoState {}

class TodoLoading extends TodoState {}

class TodoLoaded extends TodoState {
  final List<Todo> todos;

  TodoLoaded(this.todos);
}

class TodoError extends TodoState {
  final String message;

  TodoError(this.message);
}

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoLoading());

  @override
  Stream<TodoState> mapEventToState(TodoEvent event) async* {
    if (event is FetchTodos) {
      yield* _mapFetchTodosToState();
    }
  }

  Stream<TodoState> _mapFetchTodosToState() async* {
    yield TodoLoading();
    try {
      final todos = await _fetchTodos();
      yield TodoLoaded(todos);
    } catch (e) {
      yield TodoError('Failed to fetch todos');
    }
  }

  Future<List<Todo>> _fetchTodos() async {
    final apiUrl = Uri.parse('https://mocki.io/v1/your-fake-api-url');
    final response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList
          .map((json) => Todo(
                id: json['id'],
                title: json['title'],
                completed: json['completed'],
              ))
          .toList();
    } else {
      throw Exception('Failed to load todos');
    }
  }
}

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state is TodoLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is TodoLoaded) {
            return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: (context, index) {
                final todo = state.todos[index];
                return ListTile(
                  title: Text(todo.title),
                  subtitle: Text('Completed: ${todo.completed}'),
                );
              },
            );
          } else if (state is TodoError) {
            return Center(child: Text(state.message));
          }
          return Container(); // Placeholder widget
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<TodoBloc>().add(FetchTodos());
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
