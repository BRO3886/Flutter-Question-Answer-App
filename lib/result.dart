import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
  final int score;

  Result(this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'You did it!\nYour Score is '+score.toString(),
              style: TextStyle(color: Colors.green, fontSize: 30,),
              textAlign: TextAlign.center,
            ),
            RaisedButton(onPressed: (){},child: Text('Reset'),)
          ],
        ),
    );
  }
}
