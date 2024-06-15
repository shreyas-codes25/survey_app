import 'package:flutter/material.dart';
import 'package:survey_app/data/questions.dart';
import 'package:survey_app/questions_summary.dart';
import 'package:survey_app/styled_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {required this.resetQuiz, required this.chosenAnswers, super.key});

  final List<String> chosenAnswers;
  final void Function()? resetQuiz;
//   Text(((data['question_index'] as int) + 1).toString()),
  List<Map<String, Object>> get summaryDataProperty {
    final List<Map<String, String>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': '${i + 1}',
        'question': questions[i].question,
        'correct answer': questions[i].correctAnswer,
        'user answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = summaryDataProperty;
    final totalQuestion = questions.length;
    final correctAnswers = summaryData.where((data) =>
      data['user answer'] == data['correct answer']
    ).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StyledText(
              text:
                  "you answered $correctAnswers out of $totalQuestion questions correctly",
            ),
            const SizedBox(height: 30),
            QuestionsSummary(
              summaryData: summaryDataProperty,
            ),
            const SizedBox(height: 30),
            TextButton.icon(
                icon: const Icon(Icons.refresh_sharp),
                onPressed: resetQuiz,
                label: const Text("Retake Test"))
          ],
        ),
      ),
    );
  }
}
