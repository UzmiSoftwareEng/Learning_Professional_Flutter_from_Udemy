import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen  extends StatelessWidget{
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/quiz_logo.jpg',
            width: 200,
            ),
            SizedBox(
              height: 15,
            ),
            Text('Learn Flutter the fun way',
          style: TextStyle(
              color: Colors.white,
              fontSize: 21)),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white
                    ),
                    label: Icon(Icons.quiz_rounded,
                    )),
                TextButton(
                    onPressed: (){},
                    child: Text('Start Quiz',
                      style: TextStyle(
                          color: Colors.white),)),
              ],
            )

          ],
        ),
    );
    }
  }

