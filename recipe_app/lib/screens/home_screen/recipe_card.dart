import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({required this.recipe});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage("lib/assets/images/${recipe.image}"),
              //   fit: BoxFit.cover,
              // ),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Text(recipe.title!),
        ],
      ),
    );
  }
}
