// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../models/recipe.dart';
import '../widgets/recipe_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      title: 'Spaghetti with Tomato Sauce',
      imageUrl: 'assets/images/spaghetti.jpg',
      time: '20 min',
      difficulty: 'Simple',
      cost: 'Affordable',
      ingredients: ['Spaghetti', 'Tomato Sauce', 'Salt', 'Olive Oil'],
      steps: ['Boil water', 'Add spaghetti', 'Cook for 10 minutes', 'Add sauce'],
    ),
    Recipe(
      title: 'Grilled Chicken Salad',
      imageUrl: 'assets/images/chicken_salad.jpg', 
      time: '15 min',
      difficulty: 'Easy',
      cost: 'Moderate',
      ingredients: ['Chicken Breast', 'Lettuce', 'Tomatoes', 'Cucumbers', 'Olive Oil'],
      steps: ['Grill chicken', 'Chop vegetables', 'Mix all ingredients', 'Add dressing'],
    ),
    Recipe(
      title: 'Vegetable Stir Fry',
      imageUrl: 'assets/images/veg_stir_fry.jpg',
      time: '25 min',
      difficulty: 'Medium',
      cost: 'Affordable',
      ingredients: ['Broccoli', 'Carrots', 'Bell Peppers', 'Soy Sauce', 'Oil'],
      steps: ['Heat oil', 'Add vegetables', 'Stir fry for 10 minutes', 'Add sauce'],
    ),
    Recipe(
      title: 'Chocolate Chip Cookies',
      imageUrl: 'assets/images/cookies.jpg', 
      time: '30 min',
      difficulty: 'Easy',
      cost: 'Cheap',
      ingredients: ['Flour', 'Sugar', 'Eggs', 'Chocolate Chips'],
      steps: ['Mix ingredients', 'Make small balls', 'Bake for 10 minutes'],
    ),
    Recipe(
      title: 'Mushroom Risotto',
      imageUrl: 'assets/images/risotto.jpg', 
      time: '45 min',
      difficulty: 'Hard',
      cost: 'Expensive',
      ingredients: ['Rice', 'Mushrooms', 'Chicken Stock', 'Parmesan', 'Butter'],
      steps: ['Cook rice', 'Add mushrooms', 'Add stock gradually', 'Stir constantly', 'Add cheese and butter'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Quick & Easy')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            final recipe = recipes[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: RecipeCard(recipe: recipe),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

