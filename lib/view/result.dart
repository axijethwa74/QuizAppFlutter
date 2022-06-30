// ignore: unused_import
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {

final Function resetQuiz;
final int resultScore; 



  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Result(this.resultScore,this.resetQuiz);
  
 String get resultPhrases{
    
     String resultText;
    if(resultScore >= 100) 
 {
       resultText=" You got a 100 Marks ! Excellent  ";
 }
else if (resultScore >= 90 ){
       resultText="You got a 90 Marks ! Awesome ";
     }

     else if (resultScore >= 80 ){
       resultText="You got a 80 Marks ! very Good ";
     }
      else if (resultScore >= 70 ){
       resultText="You got a 70 Marks ! Good ";
     }

     else if (resultScore >= 60 ){
       resultText="You got a 60 Marks ! Average ";
     }

 else if (resultScore >= 50 ){
       resultText="You got a 50 Marks ! Just Passed ";
     }
   else{
      resultText="Sorry You`re failed !";
   }

return resultText;


  } 

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: Column(
     // mainAxisAlignment: MainAxisAlignment.center,
      children: [

         // ignore: sized_box_for_whitespace
         Container(
          color: Colors.white,
         width: double.infinity,
            height: 400,

            child: const Image(
              image: NetworkImage("https://raghucollegeofpharmacy.com/wp-content/uploads/2022/02/istockphoto-1148585703-170667a.jpg"),
            ),


       ),

       Center(
           // ignore: sized_box_for_whitespace
           child: Container(
             color: Colors.white,
            width: double.infinity,
            height: 80,
            
             child : Center(
               child: Text(resultPhrases,
            style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
            ),
             )
           ),
         ),
   

     ElevatedButton(
       style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.orange),
      foregroundColor: MaterialStateProperty.all(Colors.white)
     ), 
      onPressed: resetQuiz, child: const Text('Reset Quiz !', style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
      ],
    ),
    );  
  }
}