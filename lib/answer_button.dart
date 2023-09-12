import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget {
   const AnswerButton(this.ansText,this.onTap, {super.key});
  final String ansText;
 final Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      style:ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 10, 3, 78),
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),),
      onPressed:onTap,
      child: Text(ansText,textAlign: TextAlign.center),
    );
  }
}
