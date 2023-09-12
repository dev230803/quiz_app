import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResulutScreen extends StatelessWidget {
  const ResulutScreen(this.chosenAnswers,this.onRestart, {super.key});
  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  
  Widget build(context) {
    
    final summaryData = getSummary();
    var totalquestion = questions.length;
    var correctquestion = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'You answered $correctquestion out of $totalquestion questions correctly!',
                style: const TextStyle(color: Color.fromRGBO(184, 151, 187, 0.658),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestinSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style:TextButton.styleFrom(
                foregroundColor: Colors.white
              ) ,
              icon:const Icon(Icons.refresh),
              label:const Text('Restart Quiz') ,
              
            )
             
          ],
        ),
      ),
    );
  }
}
