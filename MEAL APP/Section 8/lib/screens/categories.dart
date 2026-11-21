import 'package:flutter/material.dart';
import 'package:home_screen/data/dummy_data.dart';
import 'package:home_screen/models/category.dart';
import 'package:home_screen/screens/meals.dart';
import 'package:home_screen/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
         .toList();

    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => MealsScreen(
        title: category.title,
        meals: filteredMeals,
        ),
      ),
    ); // Navigator.push(context, push)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MEAL APP"),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2/1,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15
      ),
        children: [
         for (final category in availableCategories)
           CategoryGridItem(
             category: category,
             onSelectCategory: () {
              _selectCategory(context, category);
             },
           ),
        ],
      ),
    );
  }

}