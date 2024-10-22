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
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Choice Chip Widget'),
          centerTitle: true,
        ),
        body: Center(
          child: ChoiceChip(
            label: const Text("My Choice Chip"),
            selectedColor: Colors.orange,
            selected: isSelected,
            onSelected: (value) {
              setState(() {
                isSelected = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
