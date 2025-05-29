import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  List<String> savedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void saveAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        savedAnswers = selectedAnswers;
        selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screen = QuestionsScreen(onSelectAnswer: saveAnswer);
    }
    if (activeScreen == 'results-screen') {
      screen = ResultsScreen(answers: savedAnswers);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 123, 7, 255),
                Color.fromARGB(255, 98, 11, 197),
                Color.fromARGB(255, 79, 16, 150),
                Color.fromARGB(255, 56, 12, 105),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screen,
        ),
      ),
    );
  }
}
