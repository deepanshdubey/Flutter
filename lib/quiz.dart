import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[_index]['questionText'] as String,
        ),
        ...(questions[_index]['answers'] as List<String>).map((answer) {
          return Answer(_answer, answer);
        }).toList()
      ],
    )
  }
}