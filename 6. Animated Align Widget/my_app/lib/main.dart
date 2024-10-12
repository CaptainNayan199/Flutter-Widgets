// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated align widget"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: Container(
              color: Colors.amber[400],
              height: 350,
              width: 350,
              child: AnimatedAlign(
                alignment:
                    selected ? Alignment.centerLeft : Alignment.centerRight,
                duration: Duration(seconds: 1),
                child: Icon(
                  Icons.settings,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
