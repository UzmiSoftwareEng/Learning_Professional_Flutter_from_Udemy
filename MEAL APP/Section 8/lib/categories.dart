import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MEAL APP"),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1/1,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15
      ),
        children: const [
          Text('Hi', style: TextStyle(color: Colors.pink),),
          Text('Hi', style: TextStyle(color: Colors.pink),),
          Text('Hi', style: TextStyle(color: Colors.pink),),
          Text('Hi', style: TextStyle(color: Colors.pink),),
          Text('Hi', style: TextStyle(color: Colors.pink),),
          Text('Hi', style: TextStyle(color: Colors.pink),),
          Text('Hi', style: TextStyle(color: Colors.pink),)
        ],
      ),
    );
  }

}