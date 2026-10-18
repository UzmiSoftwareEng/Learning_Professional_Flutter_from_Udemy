import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home:Scaffold(
        body: GradientWidget(),
      ),
    ),
  );
      }
class GradientWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(200, 150, 20, 80),
            Color.fromARGB(150, 100, 8, 40),
            ],
              begin: Alignment.bottomRight,
              end: Alignment.topRight
          ),),
      child: Text('Hello Developers',
      style: TextStyle(fontSize: 21,
    color: Colors.deepOrange,
    fontWeight: FontWeight.bold
    ),
      ),
    );
  }

}