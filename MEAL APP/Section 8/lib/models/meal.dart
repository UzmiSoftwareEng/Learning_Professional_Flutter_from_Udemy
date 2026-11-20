enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

class Meal {
  const Meal ({
    required this.id,
    required this.categories,
    required this.title,
    required this.ingredients,
    required this.steps,
    required this.imageUrl,
    required this.duration,
    required this.affordability,
    required this.complexity,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegetarian,
    required this.isVegan,
  });

  final String id;
  final List<String> categories;
  final String title;
  final List<String> ingredients;
  final List<String> steps;
  final String imageUrl;
  final int duration;
  final Affordability affordability;
  final Complexity complexity;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegetarian;
  final bool isVegan;
}