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
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final items = [];
  final GlobalKey<AnimatedListState> key = GlobalKey();
  var num = 1;

  void addItem() {
    items.insert(0, "Item number $num");
    num++;
    key.currentState!.insertItem(
      0,
      duration: Duration(milliseconds: 800),
    );
  }

  void removeItem(int index) {
    key.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: Card(
            margin: EdgeInsets.all(5),
            color: const Color.fromARGB(255, 103, 100, 100),
            child: ListTile(
              title: Text(
                "Deleted",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        );
      },
      duration: Duration(milliseconds: 300),
    );
    items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated List"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: addItem,
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
          Expanded(
            child: AnimatedList(
              key: key,
              initialItemCount: 0,
              padding: EdgeInsets.all(5),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  key: UniqueKey(),
                  child: Card(
                    margin: EdgeInsets.all(5),
                    color: Colors.orange,
                    child: ListTile(
                      title: Text(
                        items[index],
                        style: TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          removeItem(index);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
