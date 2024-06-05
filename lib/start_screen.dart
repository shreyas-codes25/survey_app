import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startQuiz,super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: Colors.white.withOpacity(0.5),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "learn flutter the fun way",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.yellow.shade300),
          ),
          const SizedBox(height: 30,),

          OutlinedButton.icon(
              icon: const Icon(Icons.arrow_right_alt),
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,

                shadowColor: Colors.white,
                textStyle: const TextStyle(

                  fontSize: 20
                )

              ),
              label:const Text("Start Quiz"))
        ],
      ),
    );
  }
}
