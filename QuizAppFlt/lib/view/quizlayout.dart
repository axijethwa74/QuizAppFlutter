import 'package:flutter/material.dart';
import 'package:quizapp/view/result.dart';
// ignore: unused_import
import './quiz.dart';
import "./result.dart";


// ignore: must_be_immutable
class LayoutApp extends StatefulWidget {


 const LayoutApp({key}) : super(key: key);

  @override
  State<LayoutApp> createState() => _LayoutAppState();
}

class _LayoutAppState extends State<LayoutApp> {

 final _question = const [
      {
        'questionText':'what\' s your fav color ?',
        'answersText':[

        {'text': 'Black', 'score' : 10 },
        {'text': 'red',    'score' : 5 },
        {'text': 'green', 'score' : 4 },
        {'text': 'white', 'score' : 3 },
        
        ],

      },
       {
        'questionText':'what\' s your fav Animal ?',
        'answersText':[

        {'text': 'rabit', 'score' : 3 },
        {'text': 'elephant', 'score' : 3 },
        {'text': 'Snake', 'score' : 3 },
        {'text': 'lion', 'score' : 3 },
        
        ],
      },
       {
        'questionText':'what\' s your fav food ?',
          'answersText':[

        {'text': 'thai', 'score' : 2 },
        {'text': 'chinees', 'score' :2 },
        {'text': 'Desi', 'score' : 2 },
        {'text': 'sweet', 'score' : 2 },
        
        ],

      },
       {
        'questionText':'what\' s your fav brand shoes ?',
           'answersText':[

        {'text': 'Adidas', 'score' : 1 },
        {'text': 'Gucci', 'score' :  1},
        {'text': 'Nike', 'score' : 1 },
        {'text': 'Nick', 'score' : 1 },
        
        ],
      },
      
    ];
  
  var _questionindex=0;

  var totalscore = 0;

  // ignore: unused_element
  void _resetQuiz(){

    setState(() {
      _questionindex=0;
      totalscore = 0;
    });
  }


  void _answersQuestion(int score){

    totalscore += score;  

    setState(() {
       _questionindex =_questionindex +1;

       if(_questionindex < _question.length){
        // ignore: avoid_print
        print('We have a more question');
       }
       else{
        // ignore: avoid_print
        print('I have no more question');
       }
    });
  
  // print(questionindex); 
  
  }

  @override
  Widget build(BuildContext context) {
   
  

    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar: AppBar(
          centerTitle: true,
          title: const Text("Quiz App"),
        ),
        body: (_questionindex < _question.length ? 
         Quiz(
          answersQuestion: _answersQuestion,
          questionindex: _questionindex,
          question: _question,
        )
        :   Result(totalscore,_resetQuiz)
        ),
      )


    );
  }
}