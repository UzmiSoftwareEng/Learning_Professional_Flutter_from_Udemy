import 'package:adding_data_model_and_dummy_data/questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chosenAnswer,});

 final List<String> chosenAnswer;

 List<Map<String, Object >> getFinalData() {
   final List<Map<String, Object>> finalData = [];

   for ( int i = 0; i < chosenAnswer.length; i++ ){
     finalData.add({
       'question_index': i,
       'question': questions[i].text,
       'correct_answer': questions[i].answers[0],
       'user_answer': chosenAnswer[i],
     },);
   }

   return finalData;
 }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y correctly'),
            const SizedBox(height: 15,),
            const Text('List of questions and answers ...'),
            const SizedBox(height: 15,),
            TextButton(
                onPressed: (){},
                child: const Text('Restart Quiz')),

          ],
        ),
      ),
    );
  }

}