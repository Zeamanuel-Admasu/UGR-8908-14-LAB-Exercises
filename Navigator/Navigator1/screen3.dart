import 'package:flutter/material.dart';
import 'screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenThree(),
        '/second': (context) => ScreenFour()
      },
    );
  }
}

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 86, 76, 175),
      appBar: AppBar(title: const Text("this is page 1")),
      body: Center(
        child: ElevatedButton(
            child: const Text("Next"),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            }),
      ),
    );
  }
}
