import 'package:flutter/material.dart';
import 'package:listview/drawer.dart';
//import 'package:listview/gridpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gridview ',
      debugShowCheckedModeBanner: false,
      home: drawerpage(),
    );
  }
}
