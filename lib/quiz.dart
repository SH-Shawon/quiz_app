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
  List<String> selectedAnswer = [];
  var activeScreen = 'startScreen';

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length == questions.length){
      setState(() {
        activeScreen ='resultScreen';
      });
    }
  }

  void switchScreen(){
    setState(() {
      activeScreen = 'questionScreen';
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'questionScreen'){
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer,);
    }
    if(activeScreen == 'resultScreen'){
      screenWidget = ResultScreen(chosenAnswer: selectedAnswer,);
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple,
                        Colors.purple
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  )
              ),
              child: screenWidget,
            )
        )
    );
  }

}