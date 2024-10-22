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
          title: const Text('Circular Progress Indicator'),
          centerTitle: true,
        ),
        body: const Center(
          child: CircularProgressIndicator(
            color: Colors.red,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
