import 'package:flutter/material.dart';

class gridviewpage extends StatefulWidget {
  const gridviewpage({super.key});

  @override
  State<gridviewpage> createState() => _gridviewpageState();
}

class _gridviewpageState extends State<gridviewpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello")),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          padding: const EdgeInsets.all(8.0),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.amber,
              child: Text("${index + 1}"),
            );
          }),
    );
  }
}
