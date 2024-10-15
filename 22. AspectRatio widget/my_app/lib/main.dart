import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://static.vecteezy.com/system/resources/thumbnails/025/067/762/small_2x/4k-beautiful-colorful-abstract-wallpaper-photo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          toolbarHeight: 100,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),
          actions: const [
            Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            )
          ],
          title: const Text(
            "A p p   B a r",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Container(
            color: Colors.orange,
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
