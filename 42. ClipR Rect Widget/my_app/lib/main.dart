// ignore_for_file: library_private_types_in_public_api

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
          title: const Text('Clip R rect widget'),
          centerTitle: true,
        ),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orangeAccent),
              child: const Icon(Icons.add, size: 100, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
