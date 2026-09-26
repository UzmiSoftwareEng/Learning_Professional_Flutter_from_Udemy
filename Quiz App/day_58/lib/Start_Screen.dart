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
            Text('Learn Flutter the fun way',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21)),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                    onPressed: (){
                      startQuiz();
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.black
                    ),
                    label: Icon(Icons.arrow_right_alt,
                    )),
                TextButton(
                    onPressed: (){},
                    child: Text('Start Quiz',
                      style: TextStyle(
                          color: Colors.black),)),
              ],
            )

          ],
               ),
       );
  }
}

