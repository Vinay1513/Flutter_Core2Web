import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/count_controller.dart';
import 'package:state_management/view/first_screen.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _profileImageUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 224, 195),
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 600,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.blue,
                    Colors.purpleAccent,
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(10, 10, 10, 1),
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(14, 13, 13, 1),
                              width: 2.0,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: 'Username',
                          iconColor: Colors.black),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(10, 10, 10, 1),
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(14, 13, 13, 1),
                              width: 2.0,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: 'Password'),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _profileImageUrlController,
                      decoration: const InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(10, 10, 10, 1),
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(14, 13, 13, 1),
                              width: 2.0,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: 'Profile Image URL'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a profile image URL';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(300, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        authController.login(
                          _usernameController.text,
                          _passwordController.text,
                          _profileImageUrlController.text,
                        );
                        Get.off(HomeScreen());
                      }
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
