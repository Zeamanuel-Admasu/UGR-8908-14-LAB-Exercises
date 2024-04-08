import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'this is demo',
      home: ScreenFive(),
    );
  }
}

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 11, 169),
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
