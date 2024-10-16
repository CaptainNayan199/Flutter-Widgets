// ignore_for_file: library_private_types_in_public_api, unused_local_variable, prefer_const_constructors

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
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: true,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: SizedBox(
            width: 500,
            height: double.infinity,
            child: Column(
              children: [
                OutlinedButton(
                  onPressed: () => setState(() {
                    show = true;
                  }),
                  child: const Text("Click"),
                ),
                SizedBox(height: 100),
                if (show)
                  BlockSemantics(
                    blocking: show,
                    child: Card(
                      color: Colors.orangeAccent,
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("This is a card"),
                            TextButton(
                                onPressed: () => setState(() {
                                      show = false;
                                    }),
                                child: Text("Cancel"))
                          ],
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
