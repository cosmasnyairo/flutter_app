import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  var questionIndex = 0;
  void answerQuestion(){
    questionIndex=questionIndex+1;
    print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {

    var questions= [
      'Captain America’s shield is made of?',
      'What is the name of Tony Stark’s personal butler?',
      'Who is the director of S.H.I.E.L.D. ?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Marvel Trivia"),

        ),
        
        body: Column(
          children: [
              Text(questions[questionIndex]),
              RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
              RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
              RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion), 
          ],
        ),
      ),
    );
  }
}
