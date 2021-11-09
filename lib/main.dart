// Deepansh Dubey.
// 26/10/2021.

import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  void answer() {
    index = index + 1;
    print(index);
    print('Answer 1 Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
<<<<<<< HEAD
      home: Scaffold(
          appBar: AppBar(
              title: Text(
            'My First App',
          )),
          body: Column(
            children: [
              Text(questions[index]),
              RaisedButton(child: Text('answer 1'), onPressed: answer),
              RaisedButton(
                  child: Text('answer 2'),
                  onPressed: () => print('Answer 2 chosen')),
              RaisedButton(
                  child: Text('answer 3'),
                  onPressed: () {
                    print('Answer 3 chosen');
                  }),
            ],
          )),
=======
      home: Text('Hello! Flutter'),
>>>>>>> 4c09f4acd4b19e5a9dbe8ce9c907d0bdbec553a8
    );
  }
}
