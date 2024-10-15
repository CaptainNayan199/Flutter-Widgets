// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
  bool isFlat = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
              duration: Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: isFlat ? 0 : 16.0,
              shape: BoxShape.rectangle,
              shadowColor: const Color.fromARGB(255, 77, 255, 0),
              color: const Color.fromARGB(255, 255, 255, 255),
              child: SizedBox(
                height: 120,
                width: 120,
                child: Icon(
                  Icons.handshake_sharp,
                  size: 50,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  isFlat = !isFlat;
                });
              },
              child: Text(
                "Click",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
