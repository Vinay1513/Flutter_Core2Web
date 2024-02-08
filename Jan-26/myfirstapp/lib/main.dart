import 'package:flutter/material.dart';

//import 'package:myfirstapp/assignment1.dart';
//import 'package:myfirstapp/assignment2.dart';
import 'package:myfirstapp/assignment3.dart';
//import 'package:myfirstapp/assignment4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment3(),
    );
  }
}
