// lib/widgets/recipe_card.dart
import 'package:flutter/material.dart';
import '../models/recipe.dart';
import '../screens/detail_screen.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(recipe: recipe),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(recipe.imageUrl, fit: BoxFit.cover, height: 200.0, width: double.infinity),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            color: Colors.black54,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(recipe.title, style: const TextStyle(color: Colors.white, fontSize: 18.0),
                    textAlign: TextAlign.center),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.schedule, color: Colors.white),
                        Text(recipe.time, style: const TextStyle(color: Colors.white)),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.work, color: Colors.white),
                        Text(recipe.difficulty, style: const TextStyle(color: Colors.white)),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.attach_money, color: Colors.white),
                        Text(recipe.cost, style: const TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
