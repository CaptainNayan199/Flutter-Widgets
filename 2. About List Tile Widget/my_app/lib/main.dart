// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
          title: Text("About tile widget"),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: Center(
          child: AboutListTile(
            icon: Icon(Icons.info),
            applicationIcon: FlutterLogo(),
            applicationLegalese: "Legalese",
            applicationName: "About Tile widget",
            applicationVersion: "1.0.0.1",
            aboutBoxChildren: [Text("List tile widget")],
          ),
        ),
      ),
    );
  }
}
