import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
