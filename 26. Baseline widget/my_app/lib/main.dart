import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
            child: const Baseline(
              baseline: 50,
              baselineType: TextBaseline.alphabetic,
              child: Icon(
                Icons.back_hand,
                size: 60,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
