import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Black', 'score': 7},
        {'text': 'White', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 20},
        {'text': 'Snake', 'score': 17},
        {'text': 'Cow', 'score': 15},
        {'text': 'Lion', 'score': 22},
      ]
    },
    {
      'questionText': 'What\'s your favourite football club?',
      'answers': [
        {'text': 'Barcelona', 'score': 99},
        {'text': 'Real Madrid', 'score': 89},
        {'text': 'Man U', 'score': 79},
        {'text': 'Liverpool', 'score': 69},
      ]
    },
  ];

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex =
          _questionIndex < _questions.length ? _questionIndex + 1 : 0;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First Flutter App')),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(
              _totalScore, _resetQuiz
            ),
      ),
    );
  }
}
