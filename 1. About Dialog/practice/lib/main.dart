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
          title: const Text('About'),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                context;
                (context) => const AboutDialog(
                      applicationIcon: FlutterLogo(),
                      applicationLegalese: "Legalese",
                      applicationName: "Flutter App",
                      applicationVersion: "version 1.1.1.1",
                      children: [
                        Text("This is a text created by Nayan Pathak"),
                      ],
                    );
              },
              child: const Text("Show dialog")),
        ),
      ),
    );
  }
}
