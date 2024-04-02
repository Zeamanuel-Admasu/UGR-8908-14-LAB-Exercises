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
          backgroundColor: Color.fromARGB(255, 202, 140, 212),
        ),
        backgroundColor: const Color.fromARGB(255, 95, 74, 99),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Card(
                  child: SizedBox(
                    width: 175,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male, size: 60),
                        Text('Male'),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Card(
                  child: SizedBox(
                    width: 175,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female, size: 60),
                        Text('Female'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Card(
                color: Colors.white,
                child: SizedBox(
                  child: Center(
                    child: Text('Third Box'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
