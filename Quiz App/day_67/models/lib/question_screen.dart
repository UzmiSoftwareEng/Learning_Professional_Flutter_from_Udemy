import 'package:adding_data_model_and_dummy_data/answer_screen.dart';
import 'package:adding_data_model_and_dummy_data/questions.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}
class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
   final activeQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              activeQuestion.text,
              style: TextStyle(fontSize: 21,
                  color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            ...activeQuestion.answers.map((item){
              return AnswerScreen(answerText: item , onTap: () {});
            }),
           ]
        ),
      ),
    );
  }}

