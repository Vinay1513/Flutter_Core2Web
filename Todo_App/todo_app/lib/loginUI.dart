import 'package:flutter/material.dart';
import 'package:todo_app/homepage.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:todo_app/signupUI.dart';

class loginUI extends StatefulWidget {
  const loginUI({super.key});

  @override
  State<loginUI> createState() => _loginUIState();
}

class _loginUIState extends State<loginUI> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _checkLogin(BuildContext context) {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username == "Vinays" && password == "1234") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Text(
            'Logged in successfully!',
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            usernameController.clear();
            passwordController.clear();
            return ToDoApp(username: username);
          },
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Invalid credentials',
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
      );
    }
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
        body: Stack(
          //fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.shutterstock.com/image-illustration/studio-background-bright-green-gradient-600nw-750570352.jpg',
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
                  "LOGIN HERE",
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
                    color: Color.fromARGB(255, 250, 248, 248).withOpacity(0.8),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        label: const Text("USERNAME"),
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
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: const Icon(Icons.remove_red_eye),
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
                      onPressed: () => _checkLogin(context),
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
                                return Signup();
                              }),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
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
        ));
  }
}
