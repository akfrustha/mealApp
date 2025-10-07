import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

const availableCategories = [
  Category(id: 'c1', title: 'Italian', color: Colors.yellow),
  Category(id: 'c2', title: 'Quick & Easy', color: Colors.tealAccent),
  Category(id: 'c3', title: 'Hamburgers', color: Colors.deepOrange),
  Category(id: 'c4', title: 'German', color: Colors.blue),
  Category(id: 'c5', title: 'Light & Lovely', color: Colors.purple),
  Category(id: 'c6', title: 'Exotic', color: Colors.white),
  Category(id: 'c7', title: 'Breakfast', color: Colors.cyan),
  Category(id: 'c8', title: 'Asian', color: Colors.blueGrey),
  Category(id: 'c9', title: 'French', color: Colors.orange),
  Category(id: 'c10', title: 'Summer', color: Colors.greenAccent),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/June_odd-eyed-cat.jpg/320px-June_odd-eyed-cat.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Add spaghetti to the boiling water - cook for about 10-12 minutes.',
      'In the meantime, heat some olive oil and add the chopped onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper, and your other spices.',
      'Serve spaghetti with the sauce. Add cheese on top if desired.'
    ],
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread.',
      'Layer ham, pineapple, and cheese on the bread.',
      'Bake the toast for around 10 minutes in the oven at 200°C.'
    ],
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c3'],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl: 'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 burger patties.',
      'Fry the patties for approximately 4 minutes on each side.',
      'Quickly fry the buns for about 1 minute on each side.',
      'Assemble burgers with patties, tomato, cucumber, onion, and ketchup.'
    ],
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
];
