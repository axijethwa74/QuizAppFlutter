// ignore: unused_import
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
   // ignore: prefer_const_constructors_in_immutables
   //Questions({Key? key}) : super(key: key);

   final String questionText;

   // ignore: use_key_in_widget_constructors
   const Questions(this.questionText);


  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Center(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Text(questionText,
        style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
        textAlign:TextAlign.center,
        ),
      ),
    );
  }
}