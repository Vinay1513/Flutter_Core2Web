import 'package:flutter/material.dart';
//import "package:google_fonts/google_fonts.dart";
//import 'package:todo_app/loginUI.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "ToDo - App",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color.fromARGB(2, 167, 177, 1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18.0),
              bottomRight: Radius.circular(18.0),
            ),
          ),
        ),
        body: Stack(
            //fit: StackFit.expand,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2017/04/06/09/26/design-2207760_1280.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                top: 14.0,
                left: 0.0,
                right: 0.0,
                child: Center(
                  child: Text(
                    "SIGN UP ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color:
                          Color.fromARGB(255, 112, 122, 136).withOpacity(0.8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            labelText: "Enter your username",
                            suffixIcon: const Icon(Icons.verified_user_rounded),
                            fillColor: const Color.fromARGB(162, 248, 246, 246),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2.0),
                            ),
                            contentPadding: const EdgeInsets.all(16.0),
                            alignLabelWithHint: true,
                            labelStyle: const TextStyle(color: Colors.black),
                          ),
                          textAlign: TextAlign.left,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Enter valid username';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              suffixIcon: const Icon(Icons.remove_red_eye),
                              fillColor:
                                  const Color.fromARGB(162, 248, 246, 246),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2.0),
                              ),
                              contentPadding: const EdgeInsets.all(16.0),
                              alignLabelWithHint: true,
                              labelStyle: const TextStyle(color: Colors.black)),
                          textAlign: TextAlign.left,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Enter valid Password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            backgroundColor: Color.fromARGB(0, 139, 148, 1),
                            minimumSize: const Size(200, 50),
                            maximumSize: const Size(400, 70),
                          ),
                          child: const Text(
                            "SIGNUP",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ]));
  }
}
