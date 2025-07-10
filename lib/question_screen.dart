import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widget/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState(){
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen>{
  @override
  Widget build(BuildContext context){
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.question,style: TextStyle(fontSize: 20,color: Colors.white),),
          SizedBox(height: 20,),
          AnswerButton(currentQuestion.answers[0], () {}),
          SizedBox(height: 20,),
          AnswerButton(currentQuestion.answers[1], () {}),
          SizedBox(height: 20,),
          AnswerButton(currentQuestion.answers[2], () {}),
          SizedBox(height: 20,),
          AnswerButton(currentQuestion.answers[3], () {}),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}