import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizUI extends StatefulWidget {
  const QuizUI({super.key});

  @override
  State<QuizUI> createState() => _QuizUIState();
}

class QuestionModel {
  final String? question;
  final List<String>? options;
  final int? answerIndex;
  const QuestionModel({this.question, this.options, this.answerIndex});
}

class _QuizUIState extends State<QuizUI> {
  void validatePage() {
    selectedAnswerIndex = -1;
  }

  int selectedAnswerIndex = -1;
  int score = 0;
  int questionIndex = 0;
  int correctAnswer = 0;

  List allQuestions = [
    const QuestionModel(
      question: "What is the capital of France ?",
      options: ["brazil", "paris", "Hong kong", "malesiya"],
      answerIndex: 1,
    ),
    const QuestionModel(
      question: "Who wrote the Indian National Anthem ?",
      options: [
        "MK Gandhi",
        "BG Tilak",
        "Rabindranath Tagore",
        "Subash chandra Bose"
      ],
      answerIndex: 2,
    ),
    const QuestionModel(
      question: "Which planet is known as the Red Planet?",
      options: ["Mercury", "Mars", "Neptune", "Jupitar"],
      answerIndex: 1,
    ),
    const QuestionModel(
      question: "Which gas is most abundant in the Earth's atmosphere?",
      options: ["oxygen", "Nitogen", "Methen", "Hydrogen"],
      answerIndex: 1,
    ),
    const QuestionModel(
      question: "Which is the longest river in world?",
      options: ["mula-mutha", "Amazon", "Nile", "Ganga"],
      answerIndex: 2,
    ),
    const QuestionModel(
      question: "What is the currency of Japan?",
      options: [
        "Japanese Yen",
        "Japanese ten",
        "Japanese koun",
        "Japanese uten"
      ],
      answerIndex: 0,
    ),
    const QuestionModel(
      question: "who is the prime minister of India?",
      options: [
        "Yogi Adityanath",
        "Narendra Modi",
        "Amit Shah",
        "Rajiv Gandhi"
      ],
      answerIndex: 1,
    ),
    const QuestionModel(
      question: "what is the larget mammal in the world?",
      options: ["Octopus", "The Blue Whale", "Snake", "Giant Whale"],
      answerIndex: 1,
    ),
    const QuestionModel(
      question: "what is the capital of Assam?",
      options: ["Dispur", "Aaizol", "Gangatok", "manipur"],
      answerIndex: 0,
    ),
    const QuestionModel(
      question: "which state has the smallest international boundary?",
      options: ["MP", "West-Bengal", "Tamilnadu", "Nagaland"],
      answerIndex: 3,
    )
  ];
  MaterialStateProperty<Color?>? getColor(int option) {
    if (selectedAnswerIndex != -1) {
      int answer = allQuestions[questionIndex].answerIndex;
      if (option == answer && selectedAnswerIndex == option) {
        score++;
      }
      if (option == allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (option == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(
            Color.fromARGB(255, 95, 126, 192));
      }
    } else {
      return const MaterialStatePropertyAll(Color.fromARGB(255, 95, 126, 192));
    }
  }

  int screens = 0;

  @override
  Widget build(BuildContext context) {
    if (screens == 0) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 35, 120, 190),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://t4.ftcdn.net/jpg/04/09/73/85/240_F_409738530_TyDK4N4h4X2s4FT1P61tAqx82AYI8dnS.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 5, 53, 107),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(20),
                  ),
                ),
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'TEST YOUR GENERAL KNOWLEDGE',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                screens = 1;
                              });
                            },
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                const Size(150, 50),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 49, 202, 207),
                              ),
                            ),
                            child: Text(
                              'Start Quiz',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    if (screens == 1) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 63, 92, 153),
          title: Text(
            'Quiz App',
            style: GoogleFonts.poppins(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(106, 4, 41, 110),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions: ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: SizedBox(
                width: 350,
                height: 70,
                child: Text(
                  allQuestions[questionIndex].question,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 0;
                  });
                }
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.black, width: 2)),
                ),
                fixedSize: const MaterialStatePropertyAll(
                  Size(300, 50),
                ),
                foregroundColor: const MaterialStatePropertyAll(
                  Colors.black,
                ),
                backgroundColor: getColor(0),
              ),
              child: Text(
                allQuestions[questionIndex].options[0],
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 1;
                  });
                }
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.black, width: 2)),
                ),
                fixedSize: const MaterialStatePropertyAll(
                  Size(300, 50),
                ),
                foregroundColor: const MaterialStatePropertyAll(
                  Colors.black,
                ),
                backgroundColor: getColor(1),
              ),
              child: Text(
                allQuestions[questionIndex].options[1],
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 2;
                  });
                }
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.black, width: 2)),
                ),
                fixedSize: const MaterialStatePropertyAll(
                  Size(300, 50),
                ),
                foregroundColor: const MaterialStatePropertyAll(
                  Colors.black,
                ),
                backgroundColor: getColor(2),
              ),
              child: Text(
                allQuestions[questionIndex].options[2],
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 3;
                  });
                }
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.black, width: 2)),
                ),
                fixedSize: const MaterialStatePropertyAll(
                  Size(300, 50),
                ),
                foregroundColor: const MaterialStatePropertyAll(
                  Colors.black,
                ),
                backgroundColor: getColor(3),
              ),
              child: Text(
                allQuestions[questionIndex].options[3],
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Row(
            children: [
              Text(
                'Next',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.navigate_next,
                size: 30,
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 7, 162, 223),
          onPressed: () {
            setState(() {
              if (questionIndex < allQuestions.length &&
                  selectedAnswerIndex != -1) {
                questionIndex++;
              }
              if (questionIndex == allQuestions.length) {
                screens = 2;
              }
              validatePage();
            });
          },
        ),
      );
    } else {
      return Scaffold(
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 1, 59, 107), // Dark blue
                  Color.fromARGB(255, 95, 141, 221), // Center blue
                  Color.fromARGB(255, 2, 45, 80), // Dark blue
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  'https://thumbs.dreamstime.com/b/gold-cup-winner-congratulations-background-vector-illustration-gold-cup-winner-congratulations-background-vector-illustration-eps-112058078.jpg',
                  width: 700,
                  height: 300,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Text(
                      'Congratulation!!!',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            5,
                          ),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "You have successfully completed the Quiz...",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Score: $score',
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                      Size(150, 50),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 21, 5, 163),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      questionIndex = 0;
                      screens = 0;
                      score = 0;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Restart',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.refresh,
                        size: 24.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      );
    }
  }
}
