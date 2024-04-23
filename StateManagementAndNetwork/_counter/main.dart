import 'package:flutter/material.dart';
import 'provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Center(
          child: Column(
            children: [
              Text(
                context.watch<CounterProvider>().counterValue.toString(),
                style: TextStyle(fontSize: 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterProvider>().incrementNumber();
                    },
                    child: const Text(
                      '+',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterProvider>().decrementNumber();
                    },
                    child: const Text(
                      '-',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
