import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final VoidCallback answerQ;

  const Quiz({
      required this.questions,
      required this.answerQ,
      required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[index]['questionText'] as String,
        ),
        ...(questions[index]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQ(answer['text'] as String, () => answer['score']) );
        }).toList()
      ],
    );
  }
}