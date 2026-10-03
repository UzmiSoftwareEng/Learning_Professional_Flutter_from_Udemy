import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen  extends StatelessWidget{
  StartScreen(this.startQuiz, {super.key});

  void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column (
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Quiz_logo.png',
            width: 200,
            //color: Color.fromARGB(90, 80, 227, 253),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
              'Learn Flutter the fun way',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
              decoration: TextDecoration.none,
              ),
          ),
          SizedBox(
            height: 15,
          ),
             TextButton.icon(
                 onPressed: startQuiz,
                 icon: Icon(Icons.arrow_right_alt,color: Colors.white,),
                 label: Text(
                   'Start Quiz',
                   style: TextStyle(
                     fontSize: 21,
                     color: Colors.white
             ),))
         ],
       ),
   );
}
}
