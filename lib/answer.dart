import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function selectHeandler;
  final String answerText;

  Answer(this.selectHeandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHeandler,
    ));
  }
}