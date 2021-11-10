// Deepansh Dubey.
// 26/10/2021.

// import 'dart:html';

import 'package:flutter/material.dart';
import './quiz.dart'

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
  final questions = const [
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
  void _answer() {

    setState(()
    {
      _index = _index + 1;
    });
    if (_index < questions.length)
    {
      print('We have more questions');
    }
    else{
      print('No more questions!');
    }
    print(_index);
    // print('Answer 1 Chosen');
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text(
            'My First App',
          )),
          body: _index < questions.length ? Quiz() : Center(child: Text(
              'You did it!'), ),
      ),
    );
  }
}
