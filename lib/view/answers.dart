// ignore: unused_import
import 'dart:ffi';


// ignore: unused_import
import 'package:flutter/material.dart';
class Answers extends StatelessWidget {
 
 final Function() handler;
 final String answersText;

  // ignore: use_key_in_widget_constructors
   const Answers(this.handler,this.answersText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
       margin: const EdgeInsets.all(8),
      child:  ElevatedButton(onPressed: handler, 
            child:  Text(answersText,style: const TextStyle(fontSize:15,fontWeight: FontWeight.w500),
            ),
      ),
    );
  }
}

