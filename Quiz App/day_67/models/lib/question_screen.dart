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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            activeQuestion.text,
            style: TextStyle(fontSize: 21,
                color: Colors.white
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          AnswerScreen(
              answerText: activeQuestion.answers[0],
              onTap: () {},
          ),
          const SizedBox(
            height: 15,
          ),
          AnswerScreen(
            answerText: activeQuestion.answers[1],
            onTap: (){},
          ),
          const SizedBox(
            height: 15,
          ),
          AnswerScreen(
            answerText: activeQuestion.answers[2],
            onTap: () {},
          ),
      const SizedBox(
        height: 15,
      ),
          AnswerScreen(
            answerText: activeQuestion.answers[3],
              onTap: () {},
          )
        ],
      ),
    );
  }}

