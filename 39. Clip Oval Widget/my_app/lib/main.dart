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
          title: const Text('Clip Oval'),
          centerTitle: true,
        ),
        body: Center(
          child: ClipOval(
            clipper: NewClip(),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}

class NewClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
