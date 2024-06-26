import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/homepage.dart';
import 'package:todo_app/signupUI.dart';

// ignore: camel_case_types
class loginUI extends StatefulWidget {
  const loginUI({super.key});

  @override
  State<loginUI> createState() => _loginUIState();
}

class _loginUIState extends State<loginUI> {
  List<Map<String, String>> auth = [
    {"username": "Vinays", "password": "Vinay123"},
    {"username": "Shashi", "password": "Shashi123"},
    {"username": "Akshay", "password": "Akshay123"},
  ];
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool showpass = true;
  Icon toggleicon() {
    return Icon(
        showpass ? Icons.remove_red_eye_outlined : Icons.remove_red_eye);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "ToDo - App",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Form(
        key: _formkey,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.shutterstock.com/image-illustration/studio-background-bright-green-gradient-600nw-750570352.jpg'),
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
                  "SIGN IN",
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
                    color: const Color.fromARGB(255, 250, 248, 248)
                        .withOpacity(0.8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 10, 177, 96),
                        blurRadius: 30,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      'https://png.pngtree.com/png-clipart/20191121/original/pngtree-user-login-or-authenticate-icon-on-gray-background-flat-icon-ve-png-image_5089976.jpg',
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        labelText: "USERNAME",
                        hintText: "Enter your username",
                        prefixIcon: const Icon(Icons.verified_user_rounded),
                        fillColor: const Color.fromARGB(162, 248, 246, 246),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
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
                      obscureText: showpass,
                      decoration: InputDecoration(
                        labelText: "PASSWORD",
                        prefixIcon: Icon(Icons.lock_clock_outlined),
                        suffixIcon: IconButton(
                          icon: toggleicon(),
                          onPressed: () {
                            setState(() {
                              showpass = !showpass;
                            });
                          },
                        ),
                        fillColor: const Color.fromARGB(162, 248, 246, 246),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                        ),
                        contentPadding: const EdgeInsets.all(16.0),
                        alignLabelWithHint: true,
                        labelStyle: const TextStyle(color: Colors.black),
                      ),
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
                      onPressed: () {
                        bool loginvalidate = _formkey.currentState!.validate();
                        bool isAuthenticate = false;
                        for (var i in auth) {
                          if (loginvalidate &&
                              i['username'] == usernameController.text &&
                              i['password'] == passwordController.text) {
                            isAuthenticate = true;
                            break;
                          }
                        }
                        if (isAuthenticate) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ToDoApp(
                                username: '$usernameController',
                              ),
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                              "Login Successful",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 20),
                            )),
                          );
                        } else {
                          Future.delayed(const Duration(seconds: 1), () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                "Login Failed",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 20),
                              )),
                            );
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                        minimumSize: const Size(200, 50),
                        maximumSize: const Size(400, 70),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Don't have an account!",
                            style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.blue),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const Signup();
                              }),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
