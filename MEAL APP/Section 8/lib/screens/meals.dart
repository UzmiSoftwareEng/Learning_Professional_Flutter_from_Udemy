import 'package:flutter/material.dart';
import 'package:home_screen/main.dart';
import 'package:home_screen/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
  });

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
        itemBuilder: (ctx, index) => Text(
         meals[index].title,
     ),
    ); //

    if(meals.isEmpty){
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Uh oh....No meal found!!',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
              ),
            ) , //
            SizedBox(height: 15,),
            Text('Select something new and tasty',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ],
        ),
      );
      if (meals.isNotEmpty) {
        content = ListView.builder(itemBuilder: (ctx, index) => Text(
          meals[index].title,
          ),
        );
      }
    }
      return  Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: content,
      );
  }

}