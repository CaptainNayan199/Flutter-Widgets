// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool selected = true;
  double fontSize = 60;
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated default text style widget"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          SizedBox(
            height: 100,
            child: AnimatedDefaultTextStyle(
              style: TextStyle(
                  color: color,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold),
              duration: Duration(milliseconds: 300),
              child: Text("Flutter"),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                fontSize = selected ? 80 : 60;
                color = selected ? Colors.blue : Colors.red;
                selected = !selected;
              });
            },
            backgroundColor: Colors.orange,
            hoverColor: Colors.green,
            child: Icon(Icons.change_circle),
          )
        ],
      ),
    );
  }
}
