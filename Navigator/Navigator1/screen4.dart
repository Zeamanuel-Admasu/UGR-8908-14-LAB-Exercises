import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 86, 76, 175),
      appBar: AppBar(title: const Text("this is page 1")),
      body: Center(
        child: ElevatedButton(
            child: const Text("Next"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
