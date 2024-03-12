import 'package:flutter/material.dart';

class CricketplayerInfo extends StatefulWidget {
  const CricketplayerInfo({super.key});

  @override
  State<CricketplayerInfo> createState() => _CricketplayerInfoState();
}

class _CricketplayerInfoState extends State<CricketplayerInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cricket Information'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const Text(
                  'Test Players',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStkRBRBye49YWq2sIaGkb1YKqegheZ7x-o5g&usqp=CAU'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStkRBRBye49YWq2sIaGkb1YKqegheZ7x-o5g&usqp=CAU'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStkRBRBye49YWq2sIaGkb1YKqegheZ7x-o5g&usqp=CAU'),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 50,
              color: Colors.red,
            ),
            Column(
              children: [
                const Text(
                  'T20 Players',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStkRBRBye49YWq2sIaGkb1YKqegheZ7x-o5g&usqp=CAU'),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStkRBRBye49YWq2sIaGkb1YKqegheZ7x-o5g&usqp=CAU'),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStkRBRBye49YWq2sIaGkb1YKqegheZ7x-o5g&usqp=CAU'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: const Divider(
                height: 10,
                thickness: 50,
                color: Colors.red,
              ),
            ),
            Column(
              children: [
                const Text(
                  'One-Day Players',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStkRBRBye49YWq2sIaGkb1YKqegheZ7x-o5g&usqp=CAU'),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStkRBRBye49YWq2sIaGkb1YKqegheZ7x-o5g&usqp=CAU'),
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStkRBRBye49YWq2sIaGkb1YKqegheZ7x-o5g&usqp=CAU'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
