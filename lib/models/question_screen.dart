class QuizQuestion {
  const QuizQuestion( this.question,  this.answers);
  final String question;
  final List<String> answers;

  String get correctAnswer => answers.first;
  List<String> get shuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }

}