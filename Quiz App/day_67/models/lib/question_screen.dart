import 'package:adding_data_model_and_dummy_data/answer_screen.dart';
import 'package:adding_data_model_and_dummy_data/questions.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key, required this.onSelectAnswer,});

  final void Function(String answer) onSelectAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}
class _QuestionScreenState extends State<QuestionScreen> {
  var activeQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    // activeQuestionIndex += 1;
    setState(() {
      //Increments value by 1
      activeQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
   final activeQuestion = questions[activeQuestionIndex];

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
                  color: Colors.white,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            ...activeQuestion.getShuffledAnswers().map((item){
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
               crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [AnswerScreen(
                    answerText: item ,
                    onTap: () {
                      answerQuestion(item);
                    },
                      ),
                  SizedBox(height: 15,)
                ],
              );

            }),
           ]
        )
      ),
    );
  }}

