import 'package:flutter/material.dart';
import 'package:home_screen/models/category.dart';
import 'package:home_screen/models/meal.dart';

const availableCategories = [
  Category(
      id: 'c1',
      title: 'Spaghetti with Tomato Sauce',
      color: Colors.red,
  ),
  Category(
      id: 'c2',
      title: 'Burger',
      color: Colors.orange,
  ),
  Category(
      id: 'c3',
      title: 'Classic Burger',
      color: Colors.green,
  ),
  Category(
      id: 'c4',
      title: 'German Schnitzel',
      color: Colors.pink,
  ),
  Category(
      id: 'c5',
      title: 'Hamburgers',
      color: Colors.purple,
  ),
  Category(
      id: 'c6',
      title: 'French',
      color: Colors.yellowAccent,
  ),
];

const dummyMeals = [
 Meal(
  id: 'm1',
  categories: [
    'c2',
    'c3',
    'c5',
  ],
  title: 'Classic Burger',
  ingredients: [
   'Burger buns',
   'Beef patty',
   'Lettuce',
    'Tomato',
    'Cheese',
   'Onion',
   'Ketchup',
],
steps: [
   'Prepare all the ingredients.',
   'Cook the beef patty in a pan.',
   'Cut the burger bun into two halves.',
   'Place lettuce on the bottom bun.',
   'Add the cooked beef patty.',
   'Add tomato, cheese and onion.',
   'Add ketchup and cover with the top bun.',
   'Serve the burger fresh.',
],
imageUrl:
'https://thumb.wikimedia.org/wikipedia/commons/thumb/6/62/NCI_Visuals_Food_Hamburger.jpg/1280px-NCI_Visuals_Food_Hamburger.jpg?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail',
duration: 30,
affordability: Affordability.affordable,
complexity: Complexity.simple,
isGlutenFree: false,
isLactoseFree: false,
isVegetarian: false,
isVegan: false,
),
Meal(
  id: 'm2',
  categories: [
    'c1'
  ],
  title: 'Spaghetti with Tomato Sauce',
ingredients: [
  'Spaghetti',
  'Tomatoes',
  'Olive oil',
  'Garlic',
  'Fresh basil',
  'Salt',
  'Black pepper',
],
steps: [
  'Boil water in a large pot.',
  'Add spaghetti and cook until soft.',
  'Heat olive oil in a pan.',
  'Add garlic and chopped tomatoes.',
  'Cook the sauce for several minutes.',
  'Add salt, pepper and fresh basil.',
  'Drain the spaghetti.',
  'Mix spaghetti with tomato sauce.',
  'Serve hot.',
],
imageUrl:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWqWG2jXKVhGbO7xs7ODErinB_HfIFM0g0Icl6WQGtpQ&s=10',
  duration: 25,
affordability: Affordability.pricey,
complexity: Complexity.hard,
isGlutenFree: false,
isLactoseFree: true,
isVegetarian: true,
isVegan: true,
),
Meal(
   id: 'm3',
   categories: [
     'c4'
   ],
   title: 'German Schnitzel',
  affordability: Affordability.luxurious,
  complexity: Complexity.challenging,
steps: [
    'Prepare the chicken breast.',
    'Flatten the chicken using a meat mallet.',
    'Season it with salt and pepper.',
    'Coat the chicken with flour.',
    'Dip it into beaten egg.',
    'Cover it with breadcrumbs.',
    'Heat oil in a frying pan.',
    'Fry the chicken until golden and cooked through.',
    'Serve with your favourite side dish.',
],
imageUrl:
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpWHdhmdSrJTsasoe6z-zGWjac4MPJatiIPW8JdW7v6Q&s=10',
  duration: 40,
  ingredients: [
    'Chicken breast',
    'Flour',
    'Egg',
    'Breadcrumbs',
    'Salt',
    'Black pepper',
    'Cooking oil',
  ],

  isGlutenFree: false,
isLactoseFree: true,
isVegetarian: false,
isVegan: false,
),
];
