// lib/screens/detail_screen.dart
import 'package:flutter/material.dart';
import '../models/recipe.dart';

class DetailScreen extends StatefulWidget {
  final Recipe recipe;

  const DetailScreen({super.key, required this.recipe});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Center(child: Text(widget.recipe.title)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.star : Icons.star_border,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
              final snackBar = SnackBar(
                content: Text(
                  isFavorite
                      ? 'Agregado a favoritos'
                      : 'Eliminado de favoritos',
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(widget.recipe.imageUrl),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Ingredients', style: TextStyle(color: Colors.pinkAccent, fontSize: 20.0),
              textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: widget.recipe.ingredients.map((ingredient) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text('- $ingredient', style: const TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.center),
                )).toList(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Steps', style: TextStyle(color: Colors.pinkAccent, fontSize: 20.0),
              textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: widget.recipe.steps.map((step) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text('- $step', style: const TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.center),
                )).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}