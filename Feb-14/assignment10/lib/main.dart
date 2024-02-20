import 'package:flutter/material.dart';
//import 'package:assignment10/assignment1.dart';
//import 'package:assignment10/assignment2.dart';
//import 'package:assignment10/assignment3.dart';
//import 'package:assignment10/assignment4.dart';
//import 'package:assignment10/assignment5.dart';
import 'package:assignment10/assignment6.dart';
//import 'package:assignment10/assignment7.dart';
//import 'package:assignment10/assignment8.dart';
//import 'package:assignment10/assignment9.dart';
//import 'package:assignment10/assignment10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment6(),
    );
  }
}
