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
  double paddValue = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Opacity"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      paddValue = paddValue == 0 ? 100 : 0;
                    },
                  );
                },
                child: Text("Change Padding"),
              ),
              Text("Padding : ${paddValue}"),
              AnimatedPadding(
                padding: EdgeInsets.all(paddValue),
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
