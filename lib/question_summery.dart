import 'package:flutter/material.dart';

class QuestionSummery extends StatelessWidget {
  const QuestionSummery({required this.summeryData, super.key});

  final List<Map<String, Object>> summeryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Scrollbar(
        thumbVisibility: true, // Always show scrollbar, if false it show scrollbar only when we scroll, then after a moment, it  vanish
        thickness: 6, // thickness of scrollbar
        radius: Radius.circular(10), // make top and bottom of scrollbar circular
        child: ListView.builder(
          itemCount: summeryData.length,
          itemBuilder: (context, index) {
            final data = summeryData[index];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${(data['questionIndex'] as int) + 1}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String,
                          style: TextStyle(fontSize: 20)),
                      SizedBox(height: 10),
                      Text('Correct: ${data['actualAnswer']}',
                          style: TextStyle(fontSize: 15, color: Colors.green)),
                      SizedBox(height: 5),
                      Text('Your Answer: ${data['selectedAnswer']}',
                          style: TextStyle(fontSize: 15, color: Colors.red)),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
