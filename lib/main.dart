import 'package:flutter/material.dart';
import 'package:flutter_app/result.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //underscore changes to private to be used in this file only

  static const _questions = [
    {
      'question': 'Captain America’s shield is made of?',
      'answers': [
        {'text': 'Vibranium', 'score': 1},
        {'text': 'Chrome', 'score': 0},
        {'text': 'Adamantium', 'score': 0},
        {'text': 'Kryptonite', 'score': 0}
      ]
    },
    {
      'question': 'Who is the Director of S.H.I.E.L.D. ?',
      'answers': [
        {'text': 'Nick Fury', 'score': 1},
        {'text': 'Tony Stark', 'score': 0},
        {'text': 'Captain America', 'score': 0},
        {'text': 'Tony Potts', 'score': 0}
      ]
    },
    {
      'question': 'What\'s the name of Tony Stark’s personal butler?',
      'answers': [
        {'text': 'Jeeves', 'score': 0},
        {'text': 'Jarvis', 'score': 1},
        {'text': 'Alfred', 'score': 0},
        {'text': 'Jennings', 'score': 0}
      ]
    },
    {
      'question': 'Who constructed the shield?',
      'answers': [
        {'text': 'Johann Schmidt', 'score': 0},
        {'text': 'Red Skull', 'score': 0},
        {'text': 'Howard Stark', 'score': 1},
        {'text': 'Bucky Barness', 'score': 0}
      ]
    },
    {
      'question': 'Stan Lee has had cameos in all Marvel movies',
      'answers': [
        {'text': 'True', 'score': 1},
        {'text': 'False', 'score': 0}
      ]
    },
    {
      'question': 'What is the name of Tony Stark’s personal secretary?',
      'answers': [
        {'text': 'Peggy Carter', 'score': 0},
        {'text': 'Pepper Potts', 'score': 1},
        {'text': 'Phil Coulson', 'score': 0},
        {'text': 'Sam Wilson', 'score': 0}
      ]
    },
    {
      'question': 'Who is Thor’s adopted sibling?',
      'answers': [
        {'text': 'Odin', 'score': 0},
        {'text': 'Loki', 'score': 1},
        {'text': 'Erik Selvig', 'score': 0},
        {'text': 'Laufey', 'score': 0}
      ]
    },
    {
      'question': 'In “Captain America: Civil War”, who rules Wakanda?',
      'answers': [
        {'text': 'HYDRA', 'score': 0},
        {'text': 'Steve Rodgers', 'score': 0},
        {'text': 'Black Panther', 'score': 1},
        {'text': 'Winter Soldier', 'score': 0}
      ]
    },
    {
      
      'question': 'What is the name of Peter Quill’s alter-ego ?',
      'answers': [
        {'text': 'Yondu', 'score': 0},
        {'text': 'Drax', 'score': 0},
        {'text': 'Star-Lord', 'score': 1},
        {'text': 'Groot', 'score': 0}
      ]
    },
    {
      'question':'What was Dr. Strange’s profession before becoming Sorcerer Supreme?',
      'answers': [
        {'text': 'professor', 'score': 0},
        {'text': 'dermatologist', 'score': 0},
        {'text': 'dentist', 'score': 0},
        {'text': 'neurosurgeon', 'score': 1}
        
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore=0;

  void _resetQuiz(){
    setState(() {
    _questionIndex = 0;
    _totalScore=0;
    });
  }

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    
    print(_questionIndex);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(" Marvel Trivia"),
          ),
          body: _questionIndex <_questions.length // the widget runs if  condition true
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore,_resetQuiz), // colon is for the else block
          ),
    );
  }
}
