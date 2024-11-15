// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Close Button Widget'),
          centerTitle: true,
        ),
        body: Center(
          child: CloseButton(
            color: Colors.red,
            onPressed: () {
              debugPrint("Close Button pressed!");
            },
          ),
        ),
      ),
    );
  }
}
