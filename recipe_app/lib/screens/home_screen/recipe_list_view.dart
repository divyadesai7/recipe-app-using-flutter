import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/screens/home_screen/recipe_card.dart';

class RecipeListView extends StatelessWidget {
  final List<Recipe> recipes = [
    new Recipe(
      title: "Chicken Biryani",
      type: "Non-Veg",
      prepTime: "1 hour",
      image: "chicken-biryani.jpg",
    ),
    new Recipe(
      title: "Green Salad",
      type: "Veg",
      prepTime: "30 mins",
      image: "veg-salad.jpg",
    ),
    new Recipe(
      title: "Ice Cream Sundae",
      type: "Dessert",
      prepTime: "5 mins",
      image: "ice-cream-sundae.jpg",
    ),
    new Recipe(
      title: "Watermelon Mojito",
      type: "Drink",
      prepTime: "20 mins",
      image: "watermelon-mojito.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Expanded(
      child: ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          // shrinkWrap: true,
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return RecipeCard(recipe: recipes[index]);
          }),
    );
  }
}
