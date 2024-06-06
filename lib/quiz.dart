import 'package:flutter/material.dart';
import 'package:survey_app/question.dart';
import 'package:survey_app/result_screen.dart';
import 'package:survey_app/start_screen.dart';
import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
            chosenAnswers: selectedAnswers, resetQuiz: restartQuiz);
      });
    }
  }

  @override
  void initState() {
    activeScreen = StartScreen(startQuiz: switchScreen);
    super.initState();
  }

  restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = StartScreen(startQuiz: switchScreen);
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = Questions(chooseAnswers: chooseAnswers);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade200,
                Colors.blueAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
