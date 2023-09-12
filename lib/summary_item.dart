import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_anser'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(itemData['question_index'] as int, isCorrectAnswer),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['user_answer'] as String,
                style:
                    const TextStyle(color: Color.fromARGB(255, 202, 171, 252)),
              ),
              Text(
                itemData['correct_answer'] as String,
                style:
                    const TextStyle(color: Color.fromARGB(255, 181, 254, 246)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
