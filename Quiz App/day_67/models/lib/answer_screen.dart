import 'package:flutter/material.dart';
import 'package:adding_data_model_and_dummy_data/answer_screen.dart';
import 'package:adding_data_model_and_dummy_data/question_screen.dart';

class AnswerScreen extends StatelessWidget{
  const AnswerScreen({super.key, required this.answerText, required this.onTap , });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return     ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21),
          )
        ),
        child: Text(answerText, textAlign: TextAlign.center,),
    );
  }

}