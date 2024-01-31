import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int index = 0;
  String label = '';
  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2024/01/15/21/16/dog-8510901_640.jpg',
    'https://media.istockphoto.com/id/636208094/photo/tropical-jungle.jpg?s=2048x2048&w=is&k=20&c=MlaHtCKbmmQAzT5d0Z-Hs8gw_yjzEar-jwMoE85Nzj8=',
    'https://media.istockphoto.com/id/473954724/photo/a-footpath-through-a-forest-with-sunshine.jpg?s=2048x2048&w=is&k=20&c=yG1q6RHuLgzS04qvKihXx1R9UMUsT2i5ahOKOLux8M4='
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 211, 195),
      appBar: AppBar(
        title: const Text(
          'ImageApp',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.network(
              imageList[index],
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            // Next Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  index++;
                  if (index == imageList.length) {
                    index = imageList.length - 1;
                    label = 'last image!';
                  }
                });
              },
              child: const Text('Next'),
            ),
            const SizedBox(
              height: 30,
            ),

            // Reset Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  index = 0;
                  label = '';
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
