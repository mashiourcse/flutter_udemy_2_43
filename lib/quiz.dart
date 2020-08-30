import 'package:flutter/cupertino.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;
  
  
  Quiz(
    {
      @required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex,
     
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: <Widget>[

            //Text(questions.elementAt(questionIndex),),

            Question(questions[questionIndex]['questionText']),

            ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map( (answer){
                return Answer(()=>answerQuestion(answer['score']), answer['text']);
            })        
            
          ],
        ),
    );
  }
}