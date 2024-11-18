// ignore_for_file: prefer_const_constructors
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
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with TickerProviderStateMixin {
  bool isPlay = true;
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Icon"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (isPlay == true) {
              controller.forward();
              isPlay = false;
            } else {
              controller.reverse();
              isPlay = true;
            }
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: controller,
            size: 200,
            color: const Color.fromARGB(255, 56, 54, 54),
          ),
        ),
      ),
    );
  }
}