import 'package:flutter/material.dart';

class drawerpage extends StatefulWidget {
  const drawerpage({Key? key}) : super(key: key);

  @override
  State<drawerpage> createState() => _drawerpageState();
}

class _drawerpageState extends State<drawerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Demo"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Incubators",
          style: TextStyle(fontSize: 24),
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello"),
            const SizedBox(height: 20), // Adding some spacing
            IconButton(
              onPressed: () {
                // Implement onPressed for add photo
              },
              icon: const Icon(Icons.add_a_photo),
            ),
            const SizedBox(height: 20), // Adding more spacing
            IconButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the drawer
              },
              icon: const Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}
