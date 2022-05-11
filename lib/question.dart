import 'package:flutter/material.dart';

void main(List<String> args) {
  
}

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,          
        ),
        textAlign: TextAlign.center,        
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
    );
  }
}