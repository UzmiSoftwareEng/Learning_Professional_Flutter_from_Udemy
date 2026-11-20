import 'package:flutter/material.dart';
import 'package:home_screen/models/category.dart';
import 'package:home_screen/models/meal.dart';
import 'package:home_screen/screens/meals.dart';

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

const dummyMeal = [
Meal(
  id: 'm1',
  categories: [
    'c2',
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
   'https://upload.wikimedia.org/wikipedia/commons/6/61/Hamburger_%289%29.jpg',
duration: 30,
affordability: Affordability.affordable,
isGlutenFree: false,
isLactoseFree: false,
isVegetarian: false,
isVegan: false,
),
Meal(
  id: 'm2',
  categories: [
    'c4'
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
  'PASTE_SPAGHETTI_IMAGE_URL_HERE',
duration: 25,
affordability: Affordability.pricey,
isGlutenFree: false,
isLactoseFree: true,
isVegetarian: true,
isVegan: true,
),
Meal(
   id: 'm3',
   categories: [
     'c1'
   ],
   title: 'German Schnitzel',
  affordability: Affordability.luxurious,
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
    'PASTE_SCHNITZEL_IMAGE_URL_HERE',
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
