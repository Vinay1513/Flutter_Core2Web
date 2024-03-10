import 'package:flutter/material.dart';

class textfieldUI extends StatefulWidget {
  const textfieldUI({super.key, required this.title});

  final String title;

  @override
  State<textfieldUI> createState() => _textfieldUIState();
}

class _textfieldUIState extends State<textfieldUI> {
  
  final TextEditingController _namesTextEditingController =
      TextEditingController();

  final FocusNode _nameFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _namesTextEditingController,
            focusNode: _nameFocusNode,
            decoration: InputDecoration(
                hintText: "Enter name",
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                    borderSide: const BorderSide(
                      color: Colors.pink,
                    ))),
            cursorColor: Colors.amber,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              print("Value = $value");
            },
            onSubmitted: (value) {
              print("DATA SUBMITTED = $value");
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("ADD"),
      ),
    );
  }
}
