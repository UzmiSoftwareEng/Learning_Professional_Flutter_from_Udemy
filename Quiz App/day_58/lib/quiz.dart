import 'package:adding_question_screen/question_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adding_question_screen/Start_Screen.dart';

class Quiz extends StatefulWidget{
  Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
   return _QuizState();
  }
}
class _QuizState extends State<Quiz> {
   var activeScreen = 'start_screen';

  void switchScreen() {
    setState(() {
     activeScreen = 'Question_Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
     Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'Question_Screen'){
      screenWidget = QuestionScreen();
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