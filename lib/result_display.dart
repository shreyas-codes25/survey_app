import 'package:flutter/material.dart';
import 'package:survey_app/styled_text.dart';

class ResultDisplay extends StatelessWidget {
  const ResultDisplay(
      {required this.question,
      required this.correctAnswer,
      required this.userAnswer,
      super.key});
  final String question;
  final String correctAnswer;
  final String userAnswer;

  @override
  Widget build(BuildContext context) {
    var result = userAnswer == correctAnswer;
    return Expanded(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          StyledText(text: question.toString()),
          Text(
            userAnswer.toString(),
            style: TextStyle(
              color:result?const Color.fromRGBO(3, 87, 9, 1.0): Colors.red,
              fontSize: 20,
            ),
          ),
         result? const Text("") : Text(
            textAlign: TextAlign.start,
            correctAnswer.toString(),
            style: const TextStyle(
              color: Color.fromRGBO(3, 87, 9, 1.0),
              fontSize: 20,
            ),
          ),

        ],
      ),
    );
  }
}
