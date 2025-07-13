
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summery.dart';

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
    List<Map<String,Object>> summeryData = getSummeryData();
    final totalQuestion = questions.length;
    final correctlyAnsweredQuestion = summeryData.where((value){
      return value['actualAnswer'] == value['selectedAnswer'];
    }).length;
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40), // make space of the container( all side)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, // this will take all the available space horizontally
            children: [
              Text('You answered $correctlyAnsweredQuestion question correctly out of $totalQuestion',style: TextStyle(fontSize: 25,),textAlign: TextAlign.center,),
              SizedBox(height: 30,),
              QuestionSummery(summeryData: summeryData)
            ],
          ),
        )
    );
  }
}