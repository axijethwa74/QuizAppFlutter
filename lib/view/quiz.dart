import 'package:flutter/material.dart';
 import './question.dart';
 import './answers.dart';

class Quiz extends StatelessWidget {

   // ignore: use_key_in_widget_constructors
   const Quiz({
   @required this.answersQuestion, 
   @required this.question,
   @required this.questionindex
   });

  final List<Map<String,Object>> question;
  final Function answersQuestion;
  final int questionindex;

  

  @override
  Widget build(BuildContext context) {
    return Column(
            children:  [
               Questions(
                 question[questionindex]['questionText'] as String,
               ),

             ...  (question[questionindex]['answersText'] as List<Map<String , Object>>).map((answer){
                return Answers( () => answersQuestion(answer['score']),answer['text'] as String); 

               }).toList() 
            ],

          );
  }
}