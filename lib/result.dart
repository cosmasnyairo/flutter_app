import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);
  
  String get resultPhrase{
    String resultText;

    if(resultScore<=4){resultText='You are bad at this! Your score is $resultScore/10';}
    else if(resultScore<=6){resultText='You have an average score! Your score is $resultScore/10';}
    else if(resultScore<=8){resultText='You are good at this! Your score is $resultScore/10';}
    else{resultText='Perfect score. Your score is $resultScore/10';}
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('Quiz Results'),
              subtitle: Text(resultPhrase,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                  textAlign: TextAlign.left,
                  ),
                  
            ),
            ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Retry Quiz',style: TextStyle(fontSize: 14)),
                    textColor: Colors.amber,
                    onPressed: resetHandler,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
