import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:survey_app/question_identifier.dart';
import 'package:survey_app/result_display.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //data['question'].toString()

              QuestionIdentifier(
                questionIndex: data['question_index'].toString(),
                correctAnswer: data['correct answer'].toString(),
                yourAnswer: data['user answer'].toString(),
              ),
              ResultDisplay(
                  question: data['question'].toString(),
                  correctAnswer: data['correct answer'].toString(),
                  userAnswer: data['user answer'].toString())
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
