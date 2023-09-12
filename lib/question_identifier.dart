import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget{
  const QuestionIdentifier(this.questionIndex,this.isCorrectAnswer,{super.key});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context) {
    var questionNumber=questionIndex+1;

    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer?
        const Color.fromARGB(255, 64, 185, 255)
        :const Color.fromARGB(255, 64, 185, 255),
        borderRadius: BorderRadius.circular(100),

      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
    );
  }
}