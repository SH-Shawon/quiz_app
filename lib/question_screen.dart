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
  var currentQuestionIndex = 0;
  void changeQuestionIndex(){
    setState(() {
      currentQuestionIndex++;
    });
  }
  @override
  Widget build(BuildContext context){
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40), // make space of the container( all side)
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, // this will take all the available space horizontally
          children: [
            Text(currentQuestion.question,style: TextStyle(fontSize: 20,color: Colors.white),),
            SizedBox(height: 20,),
            ...currentQuestion.getShuffledAnswer().map((answer){
              return AnswerButton(answer, changeQuestionIndex);
            })
          ],
        ),
      )
    );
  }
}