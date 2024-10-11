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
      home: const MyHomePage(
          name: "Nayan Pathak", title: 'Absorb pointer widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.name});
  final String title, name;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SizedBox(
              height: 100,
              width: 200,
              child: AbsorbPointer(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 72, 73, 73)),
                    onPressed: () {
                      Text("First");
                    },
                    child: null),
              ),
            ),
            SizedBox(
              height: 200,
              width: 100,
              child: AbsorbPointer(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 146, 153, 139)),
                    onPressed: () {
                      Text("Second");
                    },
                    child: null),
              ),
            )
          ], //children
        ),
      ),
    );
  }
}
