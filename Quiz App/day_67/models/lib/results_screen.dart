import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y correctly'),
            const SizedBox(height: 15,),
            const Text('List of questions and answers ...'),
            const SizedBox(height: 15,),
            TextButton(
                onPressed: (){},
                child: const Text('Restart Quiz')),

          ],
        ),
      ),
    );
  }

}