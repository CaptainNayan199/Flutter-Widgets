// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated cross fade widget"),
        centerTitle: true,
        backgroundColor: Colors.green,
        shadowColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 100,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                selected = !selected;
              });
            },
            backgroundColor: const Color.fromARGB(255, 251, 223, 8),
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
          ),
          AnimatedCrossFade(
            firstChild: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepPurpleAccent, // Border color
                  width: 4, // Border width
                ),
                borderRadius: BorderRadius.circular(20), // Border radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              // clipBehavior: Clip.antiAlias, // Prevents overflow
              child: Image.network(
                'https://images.unsplash.com/photo-1523238611412-0492e6fd5b9d?q=80&w=2448&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
                fit: BoxFit.cover, // Adjust the fit as needed
                height: 300, // Set height
                width: 300, // Set width
              ),
            ),
            secondChild: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepPurpleAccent, // Border color
                  width: 4, // Border width
                ),
                borderRadius: BorderRadius.circular(20), // Border radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              // clipBehavior: Clip.antiAlias, // Prevents overflow
              child: Image.network(
                'https://plus.unsplash.com/premium_photo-1661957173884-901e33146e92?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
                fit: BoxFit.cover, // Adjust the fit as needed
                height: 300, // Set height
                width: 300, // Set width
              ),
            ),
            duration: Duration(seconds: 1),
            crossFadeState:
                selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
        ],
      ),
    );
  }
}
