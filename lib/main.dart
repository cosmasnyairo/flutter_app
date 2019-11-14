import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

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

    var quiz= [
      {'question':'Captain America’s shield is made of?',
       'answers':['Vibranium','Chrome','Adamantium','Kryptonite'
      ]},
      {'question': 'Who is the Director of S.H.I.E.L.D. ?',
       'answers':['Nick Fury','Tony Stark','Captain America','Tony Potts'
      ]},
      {'question':'What\'s the name of Tony Stark’s personal butler?',
       'answers':['Jeeves','Jarvis','Alfred','Jennings'
      ]},
      {'question': 'Who constructed the shield?',
       'answers':['Johann Schmidt','Red Skull','Howard Stark','Bucky Barness'
      ]},
      {'question': 'Stan Lee has had cameos in all Marvel Cinematic Universe movies to date',
       'answers':['True','False'
      ]},
      {'question': 'What is the name of Tony Stark’s personal secretary?',
       'answers':['Peggy Carter','Pepper Potts','Phil Coulson','Sam Wilson'
      ]},
      {'question': 'Who is Thor’s adopted sibling?',
       'answers':['Nick Fury','Tony Stark','Captain America','Tony Potts'
      ]},
      {'question': 'Who is the Director of S.H.I.E.L.D. ?',
       'answers':['Nick Fury','Tony Stark','Captain America','Tony Potts'
      ]},
      {'question': 'Who is the Director of S.H.I.E.L.D. ?',
       'answers':['Nick Fury','Tony Stark','Captain America','Tony Potts'
      ]},
      {'question': 'Who is the Director of S.H.I.E.L.D. ?',
       'answers':['Nick Fury','Tony Stark','Captain America','Tony Potts'
      ]},
      

      
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Marvel Trivia"),

        ),
        
        body: Column(
          children: [
              Question(quiz[_questionIndex]['question']),
              ...(quiz[_questionIndex]['answers'] as List <String>).map((answer){ // this function creates new widget per question....as to define it as a list 
                return Answer(_answerQuestion ,answer); 
              }).toList()
          ],
        ),
      ),
    );
  }
}
