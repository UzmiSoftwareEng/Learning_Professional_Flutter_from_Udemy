import 'package:adding_data_model_and_dummy_data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adding_data_model_and_dummy_data/questions_summary.dart';

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
   final finalData = getFinalData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = finalData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
                'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25,
              color: Colors.white,
                decoration: TextDecoration.none
              ),
            ),
            const SizedBox(height: 15,),
            QuestionsSummary(getFinalData()),
            const SizedBox(height: 15,),
            TextButton(
                onPressed: (){},
                child: const Text(
                  'Restart Quiz',
                    style: TextStyle(
                      fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                    ),
                ),
            ),
          ],
        ),
      ),
    );
  }

}