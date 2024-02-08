import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});
  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  int countpalindrome = 0;
  int countarmstrong = 0;
  int countstrong = 0;

  void countPalindromenumbers() {
    countpalindrome = 0;
    List<int> numbersList = [1, 225, -777, 121, 111, 234, 999];
    for (int i = 0; i < numbersList.length; i++) {
      int temp = numbersList[i].abs();
      int reverseNum = 0;
      while (temp != 0) {
        reverseNum = reverseNum * 10 + temp % 10;
        temp = temp ~/ 10;
      }
      if (reverseNum == numbersList[i].abs()) {
        countpalindrome++;
      }
    }
  }

  void countarmstrongnumbers() {
    countarmstrong = 0;
    List<int> numberList2 = [153, 789, 407, 370, 908];
    for (int i = 0; i < numberList2.length; i++) {
      int temp = numberList2[i];
      int digitCount = 0;
      //count digit
      while (temp != 0) {
        digitCount++;
        temp = temp ~/ 10;
      }
      temp = numberList2[i];
      int sum = 0;
      while (temp != 0) {
        int rem = temp % 10;
        int prod = 1;
        for (int i = 0; i < digitCount; i++) {
          prod *= rem;
        }
        sum += prod;
        temp = temp ~/ 10;
      }
      if (sum == numberList2[i]) {
        setState(() {
          countarmstrong++;
        });
      }
    }
  }

  //strong numbers

  void countstrongNumber() {
    countstrong = 0;
    List<int> numberList3 = [145, 2, 1, 783, 983, 21];
    for (int i = 0; i < numberList3.length; i++) {
      int temp = numberList3[i];
      int sum = 0;
      while (temp != 0) {
        int rem = temp % 10;
        // finding factorial of rem
        int fact = 1;
        for (int i = 1; i <= rem; i++) {
          fact *= i;
        }
        sum += fact;
        temp ~/= 10;
      }
      if (sum == numberList3[i]) {
        setState(() {
          countstrong++;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 220, 225),
      appBar: AppBar(
        title: const Text("Assignment 4"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Palindrome Number Count is :- $countpalindrome ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    countPalindromenumbers();
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 190, 173, 190), // Background color
                  ),
                  child: const Text(
                    "Palindrome Count",
                    style: TextStyle(color: Color.fromARGB(255, 101, 6, 117)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(children: [
              Text(
                "ArmStrong Number Count is :-$countarmstrong ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  countarmstrongnumbers();
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromARGB(255, 190, 173, 190), // Background color
                ),
                child: const Text(
                  "Armstrong Count",
                  style: TextStyle(color: Color.fromARGB(255, 101, 6, 117)),
                ),
              ),
            ]),
            const SizedBox(height: 20),
            Column(
              children: [
                Text(
                  " Strong Number Count is :-$countstrong ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    countstrongNumber();
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 190, 173, 190), // Background color
                  ),
                  child: const Text(
                    "Strong Count",
                    style: TextStyle(color: Color.fromARGB(255, 101, 6, 117)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
