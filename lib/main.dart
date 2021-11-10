// Deepansh Dubey.
// 26/10/2021.

// import 'dart:html';

import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  void _answer() {
    setState(()
    {
      _index = _index + 1;
    });
    print(_index);
    // print('Answer 1 Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers' : ['Snake', 'Rabbit', 'Dog'],
      },
      {
        'questionText': 'What\'s your favorite Car?',
        'answers' : ['BMW 860 Li', 'Nissan GTR', 'Aston Martin DB11'],
      },

    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text(
            'My First App',
          )),
          body: Column(
            children: [
              Questions(
                questions[_index]['questionText'] as String,
              ),
              ...(questions[_index]['answers'] as List<String>).map((answer) {
                return Answer(_answer, answer);
              }).toList()
            ],
          )),
    );
  }
}
