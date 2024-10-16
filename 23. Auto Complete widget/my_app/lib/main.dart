// ignore_for_file: prefer_const_constructors

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
  static const List<String> mylist = [
    'Apple',
    'Mango',
    'Orange',
    'Pineapple',
    'Lemon',
    'Guava',
    'Avocado',
    'Banana'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Autocomplete Example")),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return mylist.where((String item) {
                  return item.toLowerCase().contains(
                        textEditingValue.text.toLowerCase(),
                      );
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
