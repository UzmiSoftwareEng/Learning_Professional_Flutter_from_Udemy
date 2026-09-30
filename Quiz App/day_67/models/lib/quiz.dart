import 'package:adding_data_model_and_dummy_data/question_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adding_data_model_and_dummy_data/Start_Screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}
class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'start_screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'Question_Screen';
    });
  }

  void chooseAnswer(String answer) {
     selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'Question_Screen'){
      screenWidget = QuestionScreen(
          onSelectAnswer : chooseAnswer,
      );
    }

    return  Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 151, 253),
              Color.fromARGB(255, 128, 246, 246),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          )
      ),
      child: screenWidget,
    );
  }
}