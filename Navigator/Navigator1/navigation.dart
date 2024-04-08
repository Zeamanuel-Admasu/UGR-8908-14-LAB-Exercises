import 'package:flutter/material.dart';
import 'screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'this is demo',
      home: ScreenOne(),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text("this is page 1")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Next"),
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const ScreenTwo(),
              ),
            );
          },
        ),
      ),
    );
  }
}
