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
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: Text(
                '$count',
                style: const TextStyle(fontSize: 40, color: Colors.black),
                key: ValueKey<int>(count),
              ),
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
            ),
            const SizedBox(height: 40),
            FloatingActionButton(
              elevation: 10,
              backgroundColor: Colors.pink,
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Icon(
                Icons.add,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
