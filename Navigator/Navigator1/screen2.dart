import 'package:flutter/material.dart';
import 'navigation.dart';

class ScreenTwo extends ScreenOne {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Yes');
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
