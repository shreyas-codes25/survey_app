import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {required this.questionIndex,
      required this.yourAnswer,
      required this.correctAnswer,
      super.key});

  final String yourAnswer;
  final String questionIndex;
  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    var result = yourAnswer == correctAnswer;
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top:20,right: 10),
      decoration: BoxDecoration(
        color: result ? const Color.fromRGBO(3, 87, 9, 1.0) : Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Text(
        questionIndex.toString(),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
