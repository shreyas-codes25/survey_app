import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:survey_app/answer_button.dart';
import 'package:survey_app/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({required this.chooseAnswers, super.key});
  final void Function(String answer) chooseAnswers;
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currQuestIndex = 0;

  void answerQuestion(String answer) {
    widget.chooseAnswers(answer);
    setState(() {
      currQuestIndex++;
      if (currQuestIndex >= questions.length) {
        setState(() {
          currQuestIndex = 0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currQuestion = questions[currQuestIndex];
    return SizedBox(
      width: double.infinity,
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currQuestion.question,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currQuestion.getShuffledAnswers().map((item) {
              return AnswerButton(
                  buttonText: item,
                  onTap: () {
                    answerQuestion(item);
                  });
            }),
          ]),
    );
  }
}
