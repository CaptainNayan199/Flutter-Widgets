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
  double sizee = 300;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () => setState(() {
          sizee = sizee == 300 ? 100 : 300;
        }),
        child: Container(
          height: 10,
          width: 20,
          color: Colors.blue[300],
          child: AnimatedSize(
            duration: const Duration(milliseconds: 200),
            curve: Curves.decelerate,
            child: Icon(
              Icons.back_hand,
              size: sizee,
            ),
          ),
        ),
      ),
    );
  }
}
