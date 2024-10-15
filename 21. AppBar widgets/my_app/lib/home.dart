import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 67, 191, 207),
                border: Border.all(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.topCenter,
              height: 200,
              width: 180,
              child: const Text(
                "Padding 1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 67, 191, 207),
                border: Border.all(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.topCenter,
              height: 200,
              width: 180,
              child: const Text(
                "Padding 2",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 67, 191, 207),
                border: Border.all(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.topCenter,
              height: 200,
              width: 180,
              child: const Text(
                "Padding 3",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
