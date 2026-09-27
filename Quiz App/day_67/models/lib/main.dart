import 'package:adding_data_model_and_dummy_data/quiz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FirstProject());

}
class FirstProject extends StatelessWidget{
  const FirstProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Quiz(),
    );
  }
}