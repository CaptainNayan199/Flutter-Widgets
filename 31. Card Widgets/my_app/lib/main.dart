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
          title: const Text('Card Widget'),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            elevation: 20,
            color: Colors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("This is a flutter card"),
                  TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
