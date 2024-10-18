// ignore_for_file: prefer_const_constructors

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
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Male"),
              SizedBox(width: 10),
              Checkbox(
                activeColor: Colors.deepPurple,
                value: isCheck,
                onChanged: (newValue) {
                  setState(() {
                    isCheck = newValue!;
                  });
                },
              ),
              if (isCheck) Text("The check box is checked")
            ],
          ),
        ),
      ),
    );
  }
}
