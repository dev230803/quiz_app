import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }

}
class _QuizState extends State<Quiz>{
  List<String> selectedAnswer=[];
  Widget? currentScreen;
  
  @override
  void initState() {
    
    currentScreen =  StartScreen(switchScreen);
    super.initState();
  }
  

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length==questions.length){
      setState(() {
        
        currentScreen=ResulutScreen(selectedAnswer,restartQuiz);
      });
      
    }
  }
  
  void switchScreen(){
    setState(() {
      currentScreen =  QuestionScreen(chooseAnswer);
    });
    
  }
  void restartQuiz() {
    setState(() {
      selectedAnswer=[];
      currentScreen = QuestionScreen(chooseAnswer);
    });
  }
  @override
  Widget build( context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 47, 1, 90),
                Color.fromARGB(255, 73, 52, 94)
              ],
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}