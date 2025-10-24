import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meals.dart';
//import 'package:meals/models/category.dart';
//import 'package:meals/screens/categories.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({
    super.key, 
    required this.onToggleFavorite, 
    required List<Meal> availableMeals});

  final void Function(Meal meal)? onToggleFavorite;
  final List<Meal> availableMeals = dummyMeals;

  void _selectCategory(BuildContext context,Category category){
     final filterMeals =dummyMeals
     .where((meal) => meal.categories.contains(category.id))
     .toList();


    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => MealsScreen(
        title: category.title, 
        meals: filterMeals,
        onToggleFavorite: onToggleFavorite ?? (meal) {},
        ),),);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            )
        ],
      ),
    );
  }
}