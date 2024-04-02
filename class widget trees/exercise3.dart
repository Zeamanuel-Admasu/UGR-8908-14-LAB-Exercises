import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),
          backgroundColor: Color.fromARGB(255, 107, 56, 116),
        ),
        backgroundColor: const Color.fromARGB(
            255, 95, 74, 99), // Set the background color of the Scaffold
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Card(
                  child: SizedBox(
                    width: 175,
                    height: 150,
                    child: Center(
                      child: Text('Male'),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Card(
                  child: SizedBox(
                    width: 175,
                    height: 150,
                    child: Center(
                      child: Text('Female'),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                child: Center(
                  child: Text('Female'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
