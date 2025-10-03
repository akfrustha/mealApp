import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

 const availableCategories = [
  Category(
    id:'c1',
    title:'Italian',
    color:Colors.yellow
  ),
    Category(
    id:'c2',
    title:'Quick & Easy',
    color:Colors.tealAccent
  ),
    Category(
    id:'c3',
    title:'Hamburugers',
    color:Colors.deepOrange
  ),
    Category(
    id:'c4',
    title:'Germans',
    color:Colors.blue
  ),
  Category(
    id:'c1',
    title:'Ligh&Lovely',
    color:Colors.purple
  ),
    Category(
    id:'c2',
    title:'Exotic',
    color:Colors.white
  ),
    Category(
    id:'c3',
    title:'Breakfast',
    color:Colors.cyan
  ),
    Category(
    id:'c4',
    title:'Asian',
    color:Colors.blueGrey
  ),
   Category(
    id:'c1',
    title:'French',
    color:Colors.yellow
  ),
    Category(
    id:'c2',
    title:'Summer',
    color:Colors.tealAccent
  ),
    Category(
    id:'c3',
    title:'Italian3',
    color:Colors.deepOrange
  ),
    Category(
    id:'c4',
    title:'Italian4',
    color:Colors.blue
  ),
  Category(
    id:'c1',
    title:'Italian',
    color:Colors.purple
  ),
    Category(
    id:'c2',
    title:'Italian2',
    color:Colors.greenAccent
  ),
    Category(
    id:'c3',
    title:'Italian3',
    color:Colors.cyan
  ),
    Category(
    id:'c4',
    title:'Italian4',
    color:Colors.blueGrey
  ),

];


const dummyMeals = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/June_odd-eyed-cat.jpg/320px-June_odd-eyed-cat.jpg',

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
    categories: ['c2', 'c3'],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
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
  Meal(
    id: 'm4',
    categories: ['c4'],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
     imageUrl: 'https://cdn.pixabay.com/photo/2018/03/31/19/09/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour, then dip into the egg, and finally coat with breadcrumbs.',
      'Heat the butter and oil in a large pan (let the fat get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes “fluffy”.',
      'Remove, and drain on kitchen paper. Serve with lemon slices.'
    ],
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  // Add more meals if needed...
];