import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resScore;
  final Function resetHandler;

  Result(this.resScore, this.resetHandler);

  String get resultPhrase{
    var resultText = 'You did it!';
    if (resScore<= 8)
      {
        resultText = "You are awesome";
      }
    else if(resScore <=12)
      {
        resultText = "You are......strange?!!?";
      }
    else{
      resultText = "You are sooo bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center ,),
          FlatButton(onPressed:() => (resetHandler), child: Text('Restart quiz'))
      ],
    ),
    );
  }
}
