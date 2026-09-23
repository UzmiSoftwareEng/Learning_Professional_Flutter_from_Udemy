import 'package:flutter/cupertino.dart';
import 'package:adding_roll_dice/Styled_Text.dart';
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
    StyledText(this.text, {super.key}) ;

   final String text;

  @override
  Widget build(BuildContext context) {
      return Text(
        text,
        style: TextStyle(
        color: Colors.white,
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
      );
   }
}