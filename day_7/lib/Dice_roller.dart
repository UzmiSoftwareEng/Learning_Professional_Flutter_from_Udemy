import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller> {

  var changeRollDice = 'assets/Images/dice-1.jpg';

  void rollDice(){
    setState(() {
      changeRollDice = 'assets/Images/dice-5.jpg';

    });

  }

  @override
  Widget build(BuildContext context) {
   return Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
     Image.asset(
       changeRollDice,
         width: 150,
     ),

       SizedBox(
         height: 15,
       ),

       TextButton(
           onPressed: rollDice,
           style: TextButton.styleFrom(
             textStyle: TextStyle(fontSize: 21,
                 fontWeight: FontWeight.bold),
           ),
           child: Text('Roll Dice',
             style: TextStyle(
                 color: Colors.purpleAccent,
                 fontWeight: FontWeight.bold),
           ))
     ],
   );
  }

}