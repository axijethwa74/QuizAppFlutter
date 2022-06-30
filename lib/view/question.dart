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
    return Column(
   mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
      child: Container(
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.all(30.0),
        child: Center(
          child: Text(questionText,
          style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
          textAlign:TextAlign.center,
          ),
        ),
      ),
    ),
      ],
    );
  }
}