import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:developer';

class ViewEmployee extends StatefulWidget {
  const ViewEmployee({super.key});

  @override
  State<ViewEmployee> createState() => _ViewEmployeeState();
}

class _ViewEmployeeState extends State<ViewEmployee> {
  List<dynamic> empData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text("APi Binding"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: empData.length,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                children: [
                  Text(empData[index]['employee_name']),
                  const SizedBox(width: 40),
                  Text("${empData[index]['employee_salary']}"),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: postEmployeeData,
        child: const Icon(Icons.add),
      ),
    );
  }

  void postEmployeeData() async {
    Uri url = Uri.parse('https://dummy.restapiexample.com/api/v1/update/21');
    Map<String, String> mapData = {
      "name": "Vinay",
      "salary": "200000",
      "age": "23"
    };
    http.Response response = await http.post(url, body: mapData);
    log(response.body);
  }
}
