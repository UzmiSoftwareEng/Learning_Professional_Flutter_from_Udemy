import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:Scaffold(
        body: Center(
          child: Container(
              width: 200,
            height: 200,
            color: Colors.purple,
              child: Center(
                  child: Text("Hello Developers",
                  style: TextStyle(fontSize: 21,
                      color: Colors.white),),
              ),
            ),
        ),
        ),
      ),
  );
}