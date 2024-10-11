// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Align Widget"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey[850],
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.settings,
                color: const Color.fromARGB(255, 240, 197, 8),
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
