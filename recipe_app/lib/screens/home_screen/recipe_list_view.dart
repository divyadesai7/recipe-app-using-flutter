import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/screens/home_screen/recipe_card.dart';

class RecipeListView extends StatelessWidget {
  List<Recipe> recipes = [
    new Recipe(title: "", type: "", prepTime: "", image: ""),
    new Recipe(title: "", type: "", prepTime: "", image: ""),
    new Recipe(title: "", type: "", prepTime: "", image: ""),
    new Recipe(title: "", type: "", prepTime: "", image: ""),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      // color: Colors.green,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return RecipeCard(recipe: recipes[index]);
          }),
    );
  }
}
