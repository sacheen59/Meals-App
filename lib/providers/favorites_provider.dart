import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';

class FavoritesMealsNotifier extends Notifier<List<Meal>> {
  @override
  List<Meal> build() {
    return [];
  }

  void toggleFavoriteMealStatus(Meal meal) {
    final isMealFavorite = state.contains(meal);
    if (isMealFavorite) {
      state = state.where((item) => item.id != meal.id).toList();
    } else {
      state = [...state, meal];
    }
  }
}

final favoriteMealsProvider = NotifierProvider<FavoritesMealsNotifier, List<Meal>>(
  FavoritesMealsNotifier.new,
);
