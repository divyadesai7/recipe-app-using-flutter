import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screens/home_screen/category_list_view.dart';
import 'package:recipe_app/screens/home_screen/recipe_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 24,
                color: primaryDarkColor,
              ),
            ),
            CategoryListView(),
            Text(
              "Recipes",
              style: TextStyle(
                fontSize: 24,
                color: primaryDarkColor,
              ),
            ),
            RecipeListView(),
          ],
        ),
      ),
    );
  }
}
