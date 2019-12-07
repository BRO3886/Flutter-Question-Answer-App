import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      if(_questionIndex > 2){
        _questionIndex = 0;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite number?',
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Column(
              children: <Widget>[
                Question(questions[_questionIndex]),
                RaisedButton(
                  onPressed: _answerQuestion, 
                  child: Text('Answer')
                ),
                RaisedButton(
                  onPressed: _answerQuestion,
                  child: Text('Answer'),
                ),
                RaisedButton(
                  onPressed: _answerQuestion,
                  child: Text('Answer'),
                ),
              ],
            )));
  }
}
