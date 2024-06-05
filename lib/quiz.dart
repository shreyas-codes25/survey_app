import 'package:flutter/material.dart';
import 'package:survey_app/question.dart';
import 'package:survey_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen ;

  @override
  void initState() {
    activeScreen =  StartScreen(startQuiz: switchScreen);
    super.initState();

  }
  void switchScreen() {
    setState(() {
      activeScreen = const Questions();
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
            child:  activeScreen,
        ),
      ),
    );
  }
}
