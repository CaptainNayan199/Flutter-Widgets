// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  bool isPressed = false;
  late Widget animatedModalBarrier;
  late AnimationController animationController;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    ColorTween colorTween = ColorTween(
      begin: Colors.red.withOpacity(0.5),
      end: Colors.white.withOpacity(0.5),
    );

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    colorAnimation = colorTween.animate(animationController);

    animatedModalBarrier = AnimatedModalBarrier(
      color: colorAnimation,
      dismissible: true,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Modal Barrier"),
        centerTitle: true,
        backgroundColor: (Colors.green),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 250,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          isPressed = true;
                        });
                        animationController.reset();
                        animationController.forward();
                        Future.delayed(Duration(seconds: 3), () {
                          setState(() {
                            isPressed = false;
                          });
                        });
                      },
                      child: Text("Click"),
                    ),
                    if (isPressed) animatedModalBarrier,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
