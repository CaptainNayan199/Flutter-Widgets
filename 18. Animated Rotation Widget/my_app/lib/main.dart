// ignore_for_file: avoid_unnecessary_containers

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
  double rota = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.lightBlue[200],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(50),
                child: AnimatedRotation(
                  turns: rota,
                  duration: const Duration(microseconds: 500),
                  child: const Icon(
                    Icons.back_hand,
                    size: 100,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.yellow,
                    minimumSize: const Size(20, 50)),
                onPressed: () {
                  setState(() {
                    rota = rota + 1 / 4;
                  });
                },
                child: const Text(
                  "Rotate Icon",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
