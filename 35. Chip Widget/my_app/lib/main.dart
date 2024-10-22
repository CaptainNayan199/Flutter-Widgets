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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          centerTitle: true,
        ),
        body: Center(
          child: Builder(builder: (context) {
            return Chip(
              label: Text("Flutter chip"),
              backgroundColor: Colors.white,
              onDeleted: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text("Chip deleted"),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}
