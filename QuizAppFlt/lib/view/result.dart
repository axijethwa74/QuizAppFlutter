// ignore: unused_import
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {

final Function resethandler;
final int resultScore; 


  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Result(this.resultScore,this.resethandler);
  
 String get resultPhrases{
    
     String resultText;
    if(resultScore <= 8) 
 {
       resultText=" Good ";
 }
else if (resultScore <= 12 ){
       resultText="best";
     }
   else{
      resultText="Sorry You`re failed !";
   }

return resultText;


  } 

 


  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child : Text(resultPhrases,
        style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
        )
),
         FlatButton(onPressed: resethandler, child: const Text('Reset Quiz !', style:  TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 5, 53, 92)),))
      ],
    );
  }
}