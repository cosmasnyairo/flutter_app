import 'package:flutter/material.dart';

import './answers.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
      @required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        new Padding(padding: EdgeInsets.all(100),),
        
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          // this function creates new widget per question....as to define it as a list
          return Answer(() => answerQuestion(answer['score']),answer['text']);
        }).toList(),
      ],
    );
  }
}
