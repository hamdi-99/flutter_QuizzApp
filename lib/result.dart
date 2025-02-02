import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler ;
  Result(this.resetHandler , this.resultScore);
  String get resultPhrase {
    var resultText = 'You did it ';
    if (resultScore <= 8) {
      resultText = 'You are awesome and Innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likable';
    } else if (resultScore <= 16) {
      resultText = 'You are strange !';
    } else {
      resultText = 'You are so bad !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
          FlatButton(child : Text('Restart') ,onPressed: resetHandler , color: Colors.blue,)
    ]));
  }
}
