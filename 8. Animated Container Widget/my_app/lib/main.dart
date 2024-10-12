// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Animated Container"),
        centerTitle: true,
        // elevation: 220,
        // shape: ShapeBorderClipper(shape: ShapeBorder),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: selected ? 300 : 100,
            height: selected ? 100 : 300,
            alignment: selected ? Alignment.centerLeft : Alignment.centerRight,
            color: selected ? Colors.green : Colors.blue,
            // curve: Curves.bounceOut,
            child: Icon(
              Icons.settings,
              color: const Color.fromARGB(255, 0, 0, 0),
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
