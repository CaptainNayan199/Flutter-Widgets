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
  bool isCheck = false;
  bool isDance = false;
  bool isCoding = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            'CheckBox list tile widget',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  "Select your Hobby",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 50),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CheckboxListTile(
                value: isCheck,
                onChanged: (newVal) {
                  setState(() {
                    isCheck = newVal!;
                  });
                },
                activeColor: Colors.lightBlue,
                title: const Text("Singing"),
                checkColor: Colors.black,
                controlAffinity: ListTileControlAffinity.trailing,
                subtitle: isCheck ? const Text("Singing is checked!") : const Text(""),
              ),
              const SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                value: isDance,
                onChanged: (newVal) {
                  setState(() {
                    isDance = newVal!;
                  });
                },
                activeColor: Colors.lightBlue,
                title: const Text("Dancing"),
                checkColor: Colors.black,
                controlAffinity: ListTileControlAffinity.trailing,
                subtitle: isDance ? const Text("Dancing is checked!") : const Text(""),
              ),
              const SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                value: isCoding,
                onChanged: (newVal) {
                  setState(() {
                    isCoding = newVal!;
                  });
                },
                activeColor: Colors.lightBlue,
                title: const Text("Coding"),
                checkColor: Colors.black,
                controlAffinity: ListTileControlAffinity.trailing,
                subtitle: isCoding ? const Text("Coding is checked!") : const Text(""),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
