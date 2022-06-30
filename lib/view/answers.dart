
// ignore: unused_import
import 'package:flutter/material.dart';
class Answers extends StatelessWidget {
 
 final Function handler;
 final String answersText;


  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
    Answers(this.handler,this.answersText,);

  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Center(
         child: Container(
      width: 350,
      color: Colors.green,
      height: 60,
       margin: const EdgeInsets.all(8),

      child:  ElevatedButton(
       style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.white,
              shadowColor: Colors.greenAccent,
              elevation: 3,
              padding: const EdgeInsets.all(10.10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              minimumSize: const Size(200, 40), //////// HERE
            ),
        onPressed: handler, 
              child:  Center(
                child: Text(answersText,style: const TextStyle(fontSize:18,fontWeight: FontWeight.w500),
                ),
              ),
      ),
   ),
  ),
      ],
    );
  }
}

