import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController compController = TextEditingController();
  TextEditingController addController = TextEditingController();

  String? _nameOutput;
  String? _compOutput;
  String? _addOutput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 160, 199),
        centerTitle: true,
        title: const Text(
          "Flutter App",
        ),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  iconColor: const Color.fromARGB(255, 31, 34, 500),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  hintText: "Enter your name !"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: TextField(
              controller: compController,
              decoration: InputDecoration(
                  iconColor: const Color.fromARGB(255, 31, 34, 500),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  hintText: "Enter your Company name !"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: TextField(
              controller: addController,
              decoration: InputDecoration(
                  iconColor: const Color.fromARGB(255, 31, 34, 500),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  hintText: "Enter your location !"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 23, 60, 90))),
              onPressed: () {
                setState(() {
                  _nameOutput = nameController.text;

                  _compOutput = compController.text;
                  _addOutput = addController.text;
                });
              },
              child: const Text("Submit"),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          (nameController.text.isNotEmpty &&
                  compController.text.isNotEmpty &&
                  addController.text.isNotEmpty)
              ? Container(
                  width: 400,
                  height: 350,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 44, 57, 100),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "Name: $_nameOutput",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "Company Name: $_compOutput",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "Address: $_addOutput",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
        ]),
      )),
    );
  }
}
