

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:meals/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>>{
  FavoriteMealsNotifier(): super([]);

  void _toggleMealFavoriteStatus(Meal meal){
   final mealIsFavorite = state.contains(meal);

   if(mealsIsFavourite){
    state = state.where((m) => m.id != meal.id).toList();
   }
   else{
    state = [...state, meal];
   }

    state = [];

  }
   

}

final favouriteMealsProvider =
 StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});
