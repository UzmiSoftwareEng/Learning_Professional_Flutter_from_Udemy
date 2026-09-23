import 'package:challange_for_me/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyQuizApp());
}
class MyQuizApp extends StatelessWidget {
  const MyQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
        home: Scaffold(
         body:  Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [
          Color.fromARGB(200, 78, 13, 151),
          Color.fromARGB(255, 78, 13, 151),
    ],
    ),
    ),
    child: StartScreen(),
    ),
    ),);
  }
}
