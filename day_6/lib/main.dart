import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 26, 2, 80),
             Color.fromARGB(255, 26, 2, 80),
            ]
          ),),
          child: Center(
            child: Text("Hello World!!",
             style: TextStyle(fontSize: 21,
             color: Colors.white
             ),
            ),
          ),
        )),
      ),);
    }