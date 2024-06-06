import 'package:flutter/material.dart';
import 'package:survey_app/answer_button.dart';
import 'package:survey_app/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    final currQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              currQuestion.question,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                fontWeight:FontWeight.bold,

              ),
            ),
             SizedBox(
              height: 30,
            ),
            AnswerButton(buttonText: currQuestion.answers[0], onTap: (){}),
            AnswerButton(buttonText: currQuestion.answers[1], onTap: (){}),
            AnswerButton(buttonText: currQuestion.answers[2], onTap: (){}),
            AnswerButton(buttonText: currQuestion.answers[3], onTap: (){}),




          ]),
    );
  }
}
