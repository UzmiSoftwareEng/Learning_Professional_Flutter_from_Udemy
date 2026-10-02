import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.finalData, {super.key});

  final List<Map<String, Object>> finalData;
  @override
  Widget build(BuildContext context) {
   return Column(
     children: finalData.map((data) {
       return Row(children: [
         Text(((data['question'] as int) + 1).toString()),
       ],);
     },
     ).toList(),
   );
  }

}