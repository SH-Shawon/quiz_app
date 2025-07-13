import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/custom_widget/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({required this.onSelectAnswer,super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState(){
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen>{
  var currentQuestionIndex = 0;
  void changeQuestionIndex(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
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
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            ...currentQuestion.getShuffledAnswer().map((answer){
              return AnswerButton(
                  answerText: answer,
                  onTap: (){
                    changeQuestionIndex(answer);
                  }
              );
            })
          ],
        ),
      )
    );
  }
}