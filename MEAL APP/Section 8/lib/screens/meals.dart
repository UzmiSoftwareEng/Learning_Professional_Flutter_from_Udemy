import 'package:flutter/material.dart';
import 'package:home_screen/models/meal.dart';
import 'package:home_screen/widgets/meal_item.dart';

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
      itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(
            meal: meals[index]
     ),
    ); //

    if(meals.isEmpty){
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Uh oh....No meal found!!',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              ),
            ) , //
            SizedBox(height: 15,),
            Text('Select something new and tasty',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      );
      if (meals.isNotEmpty) {
        content = ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) => MealItem(meal: meals[index]),
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