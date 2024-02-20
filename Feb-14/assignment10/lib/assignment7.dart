import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment 7'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_640.jpg',
                height: 300,
                width: 150,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                'https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=600',
                height: 300,
                width: 150,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                'https://images.pexels.com/photos/36762/scarlet-honeyeater-bird-red-feathers.jpg?auto=compress&cs=tinysrgb&w=600',
                height: 300,
                width: 150,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                'https://images.pexels.com/photos/33045/lion-wild-africa-african.jpg?auto=compress&cs=tinysrgb&w=600',
                height: 300,
                width: 150,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                'https://images.pexels.com/photos/1402787/pexels-photo-1402787.jpeg?auto=compress&cs=tinysrgb&w=600',
                height: 300,
                width: 150,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
