

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/data/dummy_data.dart';

final mealsProvider = Provider((ref) {
  // Here you can fetch or generate your list of meals.
  // For demonstration, we'll return an empty list.
  return dummyMeals;
});