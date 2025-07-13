
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({required this.chosenAnswer,super.key});
  final List<String> chosenAnswer;

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