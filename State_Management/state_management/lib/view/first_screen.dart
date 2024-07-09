import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/count_controller.dart';
import 'package:state_management/view/second_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CountController countController = Get.find();
    final AuthController authController = Get.find();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 224, 195),
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
        children: [
          Obx(() => Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.blue,
                      Colors.purpleAccent,
                    ])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (authController.profileImageUrl.isNotEmpty)
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.network(
                            authController.profileImageUrl.value,
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text('Logged in as: ${authController.username}'),
                    ),
                  ],
                ),
              ))),
          SizedBox(
            height: 50,
          ),
          Obx(() => Text('Count: ${countController.count}')),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: countController.increment,
                child: Text('Increment'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: countController.decrement,
                child: Text('Decrement'),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.to(ContainerListScreen());
            },
            child: Text('Go to Container List'),
          ),
        ],
      ),
    );
  }
}
