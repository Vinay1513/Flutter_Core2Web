import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/count_controller.dart';

class ContainerListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CountController countController = Get.find();
    final AuthController authController = Get.find();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 231, 175),
      appBar: AppBar(title: Text('Container List Screen')),
      body: Obx(() {
        return Column(
          children: [
            Padding(
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
                )),
            Expanded(
              child: ListView.builder(
                itemCount: countController.count.value,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blue,
                            Colors.purpleAccent,
                          ]),
                    ),
                    child: Row(
                      children: [
                        Image.network(
                          authController.profileImageUrl.value,
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Container $index',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
