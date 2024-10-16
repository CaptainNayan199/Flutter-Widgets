// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, non_constant_identifier_names

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
          title: const Text('AppBar'),
          centerTitle: true,
        ),
        body: MyWidget(),
      ),
    );
  }
}

MyWidget() => Builder(
      builder: (context) {
        return Text("This is Nayan Pathak",
            style: Theme.of(context).textTheme.displayLarge);
      },
    );
