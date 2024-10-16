// ignore_for_file: library_private_types_in_public_api

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
  int currentIndex = 0;
  List<Widget> mylist = const [
    Icon(
      Icons.home,
      size: 100,
    ),
    Icon(
      Icons.search,
      size: 100,
    ),
    Icon(
      Icons.menu,
      size: 100,
    ),
    Icon(
      Icons.settings,
      size: 100,
    )
  ];
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
          child: mylist[currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 20,
          iconSize: 22,
          fixedColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                label: "Menu"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                label: "Settings")
          ],
          currentIndex: currentIndex,
          onTap: (int newValue) {
            setState(() {
              currentIndex = newValue;
            });
          },
        ),
      ),
    );
  }
}
