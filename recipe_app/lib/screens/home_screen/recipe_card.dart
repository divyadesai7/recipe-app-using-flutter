import 'package:flutter/material.dart';
import 'package:recipe_app/components/rounded_food_label.dart';
import 'package:recipe_app/components/rounded_text_label.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/models/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({required this.recipe});

  @override
  Widget build(BuildContext context) {
    IconData typeIcon = Icons.restaurant_menu;
    Color typeIconColor = primaryDarkColor;

    switch (recipe.type) {
      case "Non-Veg":
        typeIcon = Icons.stop_circle_outlined;
        typeIconColor = Colors.red[800] as Color;
        break;

      case "Veg":
        typeIcon = Icons.stop_circle_outlined;
        typeIconColor = Colors.green[800] as Color;
        break;

      case "Dessert":
        typeIcon = Icons.icecream_sharp;
        break;

      case "Drink":
        typeIcon = Icons.wine_bar_sharp;
        break;
    }

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.3,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        // color: Colors.blue,
        image: DecorationImage(
          image: AssetImage("lib/assets/images/${recipe.image}"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedTextLabel(
                label: recipe.type!,
                icon: typeIcon,
                iconColor: typeIconColor,
              ),
              RoundedTextLabel(
                label: recipe.prepTime!,
                icon: Icons.timer,
                iconColor: primaryColor,
              ),
            ],
          ),
          RoundedFoodLabel(label: recipe.title!),
        ],
      ),
    );
  }
}
