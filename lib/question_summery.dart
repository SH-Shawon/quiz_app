import 'package:flutter/cupertino.dart';

class QuestionSummery extends StatelessWidget{
  const QuestionSummery({required this.summeryData,super.key});

  final List<Map<String,Object>> summeryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summeryData.map((data){
        return Row(
          children: [
            Text(((data['questionIndex'] as int) + 1).toString(),style: TextStyle(fontSize: 20),),
            SizedBox(width: 30,),
            Column(
              children: [
                Text(data['question'] as String,style: TextStyle(fontSize: 20)),
                SizedBox(height: 10,),
                Text(data['actualAnswer'] as String,style: TextStyle(fontSize: 15)),
                SizedBox(height: 10,),
                Text(data['selectedAnswer'] as String,style: TextStyle(fontSize: 15)),
                SizedBox(height: 20,),
              ],
            )
          ],
        );
      }).toList(),
    );
  }

}