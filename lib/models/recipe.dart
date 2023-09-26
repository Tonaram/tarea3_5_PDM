// lib/models/recipe.dart
class Recipe {
  final String title;
  final String imageUrl;
  final String time;
  final String difficulty;
  final String cost;
  final List<String> ingredients;
  final List<String> steps;

  Recipe({
    required this.title,
    required this.imageUrl,
    required this.time,
    required this.difficulty,
    required this.cost,
    required this.ingredients,
    required this.steps,
  });
}