import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionHandler;
  final String answerText;

  Answer(this.questionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Container(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(7),
                side: BorderSide(color: Colors.blue)),
            onPressed: questionHandler,
            child: Text(
              answerText,
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
