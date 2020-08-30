import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    var resultText = 'You are failed.';
    if(resultScore<10)
      return resultText;

    resultText = 'You are passed.';
    
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('Your score is $resultScore, ' + resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),

          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}