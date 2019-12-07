import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;

      if (_questionIndex > 2) {
        _questionIndex = 0;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Blue', 'Red', 'Green']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Tiger', 'Lion', 'Elephant', 'Snake']
      },
      {
        'questionText': 'What\'s your favorite season?',
        'answers': ['Summer', 'Winter', 'Monsoon', 'Spring']
      },
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Column(
              children: <Widget>[
                Question(_questions[_questionIndex]['questionText']),
                ...(_questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )));
  }
}
