import 'package:flutter/material.dart';
import 'package:quiz_app/summary_item.dart';

class QuestinSummary extends StatelessWidget {
  const QuestinSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
