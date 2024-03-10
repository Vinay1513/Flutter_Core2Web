import 'package:flutter/material.dart';
import 'package:themes/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 45, 147, 173),
          foregroundColor: Color.fromARGB(255, 35, 27, 27),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
            background: const Color.fromARGB(255, 136, 171, 117),
            primary: Colors.blue),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 222, 143, 110),
            foregroundColor: Colors.black,
            fixedSize: const Size(300, 10),
          ),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              color: Color.fromARGB(255, 125, 124, 132),
              fontSize: 26.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(title: "Flutter Demo Home page"),
    );
  }
}
