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
          title: const Text('Clip Rect Widget'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: ClipRect(
            clipper: MyClipper(),
            child: Container(
              height: 3000,
              width: 3000,
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(100, 100, 100, 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
