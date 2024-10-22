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
          title: const Text('Circle Avatar Widget'),
          centerTitle: true,
        ),
        body: const Center(
          child: CircleAvatar(
            backgroundColor: Colors.orange,
            radius: 50,
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2024/03/01/19/57/airbus-8607152_1280.jpg'),
            child: Text(
              "Aeroplane",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
