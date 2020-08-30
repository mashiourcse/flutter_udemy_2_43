import 'package:flutter/material.dart';
import 'package:flutter_appppp/result.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

var _questions = [

    {
      'questionText' : 'What\'s your favorite color?',
      'answers' : [{'text':'Black','score':10}, {'text':'Red','score':5}, {'text':'Green','score':3}, {'text':'White','score':2}],
    },

    {
      'questionText' : 'What\'s your favorite Villain?',
      'answers' : [{'text':'Joker','score':10}, {'text':'Bane','score':5}, {'text':'Scarecrow','score':3}, {'text':'Ras Al Ghul','score':2}],
    },

    {
      'questionText' : 'What\'s your favorite time?',
      'answers' : [{'text':'Morning','score':10}, {'text':'Noon','score':5}, {'text':'Night','score':3}, {'text':'Evening','score':2}],
    },

    
  ];

  var _totalScore = 0;
  var _questionIndex = 0;
  var ans;
  void _answerQuestion(int score){
    
    _totalScore += score;
    setState(() {
      
      _questionIndex = _questionIndex + 1;
        
    });

     print(_questionIndex);

if(_questionIndex < _questions.length){
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  
  }

  void _resetQuiz(){
    
    setState(() {

      _questionIndex = 0;
    _totalScore = 0;
  
    });
    
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
            title: Text('My First App'),
        ),

        body: _questionIndex < _questions.length ? 
        Quiz(questions: _questions, answerQuestion: _answerQuestion, questionIndex: _questionIndex,)  
        : Center(
          child: Result(_totalScore, _resetQuiz),
        )

      ),
    );

  }
}
