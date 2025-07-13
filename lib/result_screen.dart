
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({required this.chosenAnswer,super.key});
  final List<String> chosenAnswer;

  List<Map<String,Object>> getSummeryData(){
    List<Map<String,Object>> summeryData = [];

    for(int i = 0; i < chosenAnswer.length; i++) {
      summeryData.add({
        'questionIndex': i,
        'question':questions[i].question,
        'actualAnswer': questions[i].answers[0],
        'selectedAnswer': chosenAnswer[i]
      });
    }

    return summeryData;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40), // make space of the container( all side)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, // this will take all the available space horizontally
            children: [
              Text('You have answered X question out of Y question'),

            ],
          ),
        )
    );
  }
}