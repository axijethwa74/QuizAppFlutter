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
        'questionText':'Q1: what\' is Flutter ?',
        'answersText':[

        {'text': 'A : Flutter is an Open source DBMS', 'score' : 0 },
        {'text': 'B : Flutter is an Open source UI toolkit',    'score' : 10 },
        {'text': 'C : Flutter is an Open source Backend toolkit', 'score' : 0 },
        {'text': 'D : All of Above', 'score' : 0 },
        
        ],

      },
       {
        'questionText':'Q2: The first Alpha version of Flutter was released in ?',
        'answersText':[

        {'text': 'A : May 2017', 'score' : 10 },
        {'text': 'B : May 2018', 'score' : 0 },
        {'text': 'C : May 2016', 'score' : 0 },
        {'text': 'D : May 2019', 'score' : 0 },
        
        ],
      },
       {
        'questionText':'Q3: Flutter is developed by ?',
          'answersText':[

        {'text': 'A : Microsoft', 'score' : 0 },
        {'text': 'B : Facebook', 'score' : 0 },
        {'text': 'C : Google', 'score' : 10 },
        {'text': 'D : IBM', 'score' : 0 },
        
        ],

      },
       {
        'questionText':'Q4: Flutter is a programming Language ?',
           'answersText':[

        {'text': 'A : Yes', 'score' : 0 },
        {'text': 'B : No', 'score' :  10},
        {'text': 'C : May be', 'score' : 0 },
        {'text': 'D : Can`t say', 'score' : 0 },
        
        ],
      },

      {
        'questionText':'Q5: Is Flutter a SDK ?',
           'answersText':[

        {'text': 'A : Yes', 'score' : 10 },
        {'text': 'B : No', 'score' :  0},
        {'text': 'C : May be', 'score' : 0 },
        {'text': 'D : Can`t say', 'score' : 0 },
        
        ],
      },

      {
        'questionText':'Q6: SDK Stand for ?',
           'answersText':[

        {'text': 'A : Software Development Knowleged', 'score' : 0 },
        {'text': 'B : Software data Kit', 'score' :  0},
        {'text': 'C : Software Development Kit', 'score' : 10 },
        {'text': 'D : Software Database Kit', 'score' : 0 },
        
        ],
      },

      {
        'questionText':'Q7: What is Dart ?',
           'answersText':[

        {'text': 'A : Dart is a Object-Oriented programming language', 'score' : 0 },
        {'text': 'B : Dart is used to create a frontend user interface', 'score' :  0},
        {'text': 'C : Both A & B ', 'score' : 10 },
        {'text': 'D : All of Above', 'score' : 0 },
        
        ],
      },
      

      {
        'questionText':'Q8: What is the best editor for Flutter Development ?',
           'answersText':[

        {'text': 'A : Android Studio', 'score' : 0 },
        {'text': 'B : Inteliij IDEA', 'score' :  0},
        {'text': 'C : Visual Studio ', 'score' : 0 },
        {'text': 'D : All of Above', 'score' : 10 },
        
        ],
      },

       {
        'questionText':'Q9: The Dart Language can be Complied ?',
           'answersText':[

        {'text': 'A : AOT', 'score' : 0 },
        {'text': 'B : JIT', 'score' :  0},
        {'text': 'C : Both A & B  ', 'score' : 10 },
        {'text': 'D : None of them', 'score' : 0 },
        
        ],
      },

       {
        'questionText':'Q10: How many types of widget in Flutter ?',
           'answersText':[

        {'text': 'A : 2', 'score' : 10 },
        {'text': 'B : 3', 'score' :  0},
        {'text': 'C : 4  ', 'score' : 0 },
        {'text': 'D : 5', 'score' : 0 },
        
        ],
      },
      
    ];
  
  var _questionindex=0;


  var _totalscore = 0; 

  // ignore: unused_element
  void _resetQuiz(){

    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
  }


  void _answersQuestion(int score){

    _totalscore += score;  

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
      
   // theme: ThemeData(useMaterial3: true),
      home: Scaffold(
         appBar: AppBar(
          centerTitle: true,
          title: const Text("Quiz App"),
          backgroundColor: Colors.green,
        ),
        body: (_questionindex < _question.length ? 
         Quiz(
          answersQuestion: _answersQuestion,
          questionindex: _questionindex,
          question: _question,
        )
        :  
         Result(_totalscore,_resetQuiz)
        ),

      )


    );
  }
}