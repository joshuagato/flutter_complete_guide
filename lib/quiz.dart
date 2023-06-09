import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // final List<Map<String, List>> questions; // this will throw an exception
  final List<Map<String, Object>> questions;
  final int questionIndex;
  // final VoidCallback answerQuestion;
  final Function answerQuestion;

  const Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Question(questions.elementAt(_questionIndex)['questionText']),
        // Question(questions[_questionIndex]['questionText']),
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(answer['score']),
            answer['text'] as String,
          );
        }).toList()
      ],
    );
  }
}
