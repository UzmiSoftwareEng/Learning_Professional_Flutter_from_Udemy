import 'package:flutter/cupertino.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}
class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
   return Container(
     width: double.infinity,
       height: double.infinity,
       child: Center(child: Text('Question Screen',style: TextStyle(fontSize: 31, ),)));
  }

}