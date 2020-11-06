import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String textAnswer ;
  final Function selectHandler ;
  Answer(this.selectHandler , this.textAnswer) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(textAnswer),
          onPressed: selectHandler,
      ),
    );
  }
}
