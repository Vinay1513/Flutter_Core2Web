import 'package:flutter/material.dart';

class IndianFlag extends StatefulWidget {
  const IndianFlag({super.key});
  @override
  _IndianFlagState createState() => _IndianFlagState();
}

class _IndianFlagState extends State<IndianFlag> {
  int counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("India Flag"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Text("Add"),
      ),
      body: Container(
        color: Colors.grey[300],
        // ignore: sort_child_properties_last
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (counter >= 0)
                    ? Container(
                        height: 500,
                        width: 20,
                        color: Colors.black,
                      )
                    : Container(),
                Column(
                  children: [
                    (counter >= 1)
                        ? Container(
                            height: 80,
                            width: 250,
                            color: Colors.orange,
                          )
                        : Container(),
                    (counter >= 2)
                        ? Container(
                            color: Colors.white,
                            width: 250,
                            height: 80,
                            child: (counter >= 3)
                                ? Image.network(
                                    'https://static.vecteezy.com/system/resources/previews/027/384/142/original/blue-ashoka-wheel-indian-symbol-ashoka-chakra-png.png',
                                  )
                                : Container(),
                          )
                        : Container(),
                    (counter >= 4)
                        ? Container(
                            height: 80,
                            width: 250,
                            color: Colors.green,
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
            // Add a container after the row
            (counter >= 5)
                ? Container(
                    height: 50,
                    width: 550,
                    color: Colors.black,
                  )
                : Container(),
          ],
        ),
        padding: EdgeInsets.only(top: 20),
      ),
    );
  }
}
