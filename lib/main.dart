import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  var questionIndex = 0;

  void answerQuestion(){
    questionIndex++;
    print(questionIndex);
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
                Text(questions[questionIndex]),
                RaisedButton(
                  onPressed: answerQuestion,
                  child: Text('Answer')
                ),
                RaisedButton(
                  onPressed: answerQuestion,
                  child: Text('Answer'),
                ),
                RaisedButton(
                  onPressed: answerQuestion,
                  child: Text('Answer'),
                ),
              ],
            )));
  }
}
