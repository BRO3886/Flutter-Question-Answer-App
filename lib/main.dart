import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;

  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 7},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 3},
        {'text': 'Lion', 'score': 3},
        {'text': 'Snake', 'score': 5},
        {'text': 'Dog', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your favorite season?',
      'answers': [
        {'text': 'Summer', 'score': 7},
        {'text': 'Winter', 'score': 2},
        {'text': 'Monsoon', 'score': 5},
        {'text': 'Spring', 'score': 9},
      ]
    },
  ];
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
    });
    _totalScore += score;
    print(_questionIndex);
  }

  void _restartQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Center(
              child: _questionIndex < _questions.length
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    )
                  : Result(_totalScore,_restartQuiz),
            )));
  }
}
