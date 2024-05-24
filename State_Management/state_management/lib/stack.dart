import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  const StackDemo({super.key, required this.title});
  final String title;
  @override
  State<StackDemo> createState() => _StackDemo();
}

class _StackDemo extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.network(
            'https://cdn.pixabay.com/photo/2019/06/06/22/50/sea-4257204_640.jpg',
            height: 500,
            width: 500,
            fit: BoxFit.cover,
          ),
          const Positioned(
              top: 100,
              left: 50,
              child: Text(
                "Incubator",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ))
        ],
      ),
    );
  }
}
