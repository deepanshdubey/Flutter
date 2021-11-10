import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  var _totalScore = 0;

  void _resetQuiz()
  {
    setState(() {
      var _index = 0;
      var _totalScore = 0;

    });
  }

  final _questions = const [
    {'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text':'Black', 'score': 10},
        {'text':'Red', 'score': 7},
        {'text':'Green', 'score': 5},
        {'text':'White', 'score': 1},],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers' : [
        {'text':'Dog', 'score': 1},
        {'text':'Cat', 'score': 7},
        {'text':'Elephant', 'score': 3},
        {'text':'Snake', 'score': 10},],
    },
    {
      'questionText': 'What\'s your favorite Car?',
      'answers' : [

      {'text':'BMW 860 Li', 'score': 1},
      {'text':'Audi R8 ', 'score': 3},
      {'text':'Aston Martin DB11', 'score': 5},
      {'text':'Nissan GTR', 'score': 10},],
    },

  ];
    void _answer(int score) {

     _totalScore += score;

    setState(()
    {
      _index = _index + 1;
    });
    if (_index < _questions.length)
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
          body: _index < _questions.length
              ? Quiz(answerQ:() => _answer ,
              index: _index,
              questions: _questions)
              : Result(_totalScore, () => _resetQuiz()
          ),
      ),
    );
  }
}
