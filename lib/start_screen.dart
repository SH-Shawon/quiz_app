import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',color: Color.fromARGB(100, 255, 255, 255),width: 300,),
          SizedBox(height: 30,),
          Text("Learn flutter with fun!",style: TextStyle(color: Colors.white,fontSize: 40),),
          SizedBox(height: 20,),
          OutlinedButton.icon(
            onPressed: (){},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: Text('start quiz'),
          )
        ],
      ),
    );
  }
}