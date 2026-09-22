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
    width: 200,
    height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(200, 150, 20, 80),
            Color.fromARGB(200, 150, 20, 80),
            ],
              begin: Alignment.bottomRight,
              end: Alignment.topRight
          ),),
          child: Text("Hello Developers",
          style: TextStyle(fontSize: 21,
          color: Colors.white),
          ),
    );
  }

}