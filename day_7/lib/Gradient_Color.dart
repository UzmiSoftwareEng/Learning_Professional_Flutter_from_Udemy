import 'package:adding_roll_dice/Dice_roller.dart';

import 'package:flutter/material.dart';


class GradientColor extends StatelessWidget{
   const GradientColor(this.color1,this.color2, {super.key});

   const GradientColor.purple() :
     color1 = Colors.deepPurple,
     color2 = Colors.white10;

    final Color color1;
    final Color color2;


@override
Widget build(BuildContext context) {
  const startAlignment = Alignment.topRight;
  final endAlignment = Alignment.bottomRight;

  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment
      ),
    ),
    child: Center(
      child: DiceRoller(),
   ),
  );
  }
}

