import 'package:flutter/material.dart';
import 'package:todo_app/homepage.dart';

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
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Login Successful"),
            content: Text("Welcome, $username!"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ToDoApp(username: username),
                    ),
                  );
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Login Failed"),
            content: const Text("Invalid username or password."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ToDo - App",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey,
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
                "Schedule your daily task",
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
                color: Color.fromARGB(255, 112, 122, 136).withOpacity(0.8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      labelText: "Enter your username",
                      suffixIcon: const Icon(Icons.verified_user_rounded),
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
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        suffixIcon: const Icon(Icons.remove_red_eye),
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
                        labelStyle: const TextStyle(color: Colors.black)),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () => _checkLogin(context),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Color.fromARGB(255, 6, 49, 165),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
