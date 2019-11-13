import 'package:flutter/material.dart';

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
 
class _MyAppState extends State<MyApp>{     //underscore changes to private to be used in this file only

  var _questionIndex = 0;
  void _answerQuestion(){
    setState(() {
      
    });
    _questionIndex=_questionIndex+1;
    print(_questionIndex);
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
              Text(questions[_questionIndex]),
              RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
              RaisedButton(child: Text('Answer 2'), onPressed: _answerQuestion),
              RaisedButton(child: Text('Answer 3'), onPressed: _answerQuestion), 
          ],
        ),
      ),
    );
  }
}
