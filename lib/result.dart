import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You are great!';
    if( resultScore <= 100 ){
      resultText = 'You can be better!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            FlatButton(
              onPressed: resetQuiz, 
              child: Text('Restart Quiz!'),
              textColor: Colors.blue,
              color: Colors.yellow,
            )
            ],
        ));
  }
}
