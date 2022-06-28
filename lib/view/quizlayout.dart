import 'package:flutter/material.dart';
// ignore: unused_import
import './question.dart';
// ignore: unused_import
import 'answers.dart';


// ignore: must_be_immutable
class LayoutApp extends StatefulWidget {


 const LayoutApp({Key? key}) : super(key: key);

  @override
  State<LayoutApp> createState() => _LayoutAppState();
}

class _LayoutAppState extends State<LayoutApp> {

  
  var questionindex=0;


  void answersQuestion(){

    setState(() {
       questionindex =questionindex +1;
    });
  
  // print(questionindex); 
  
  }

  @override
  Widget build(BuildContext context) {
   
    var question = [
      {
        'questionText':'what\' s your fav color ?',
        'answersText':['red','green','yellow','blue'],

      },
       {
        'questionText':'what\' s your fav Animal ?',
        'answersText':['rabit','snake','elephants','lion'],

      },
       {
        'questionText':'what\' s your fav food ?',
        'answersText':['Desi','thai','chinees','veg'],

      },
       {
        'questionText':'what\' s your fav brand shoes ?',
        'answersText':['nike','Addidas','Gucci','urban nick'],

      },
      
    ];

    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar: AppBar(
          centerTitle: true,
          title: const Text("Quiz App"),
        ),
        body: Center(
          child: Column(
            children:  [
               Questions(
                 question[questionindex]['questionText'].toString(),
               ),

             ...  (question[questionindex]['answersText'] as List<String>).map((Answer){
                return Answers(answersQuestion, Answer); 

               }).toList()
            ],

          ),
        ),
        ),



    );
  }
}