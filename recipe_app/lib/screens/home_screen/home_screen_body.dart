import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screens/home_screen/category_list_view.dart';
import 'package:recipe_app/screens/home_screen/recipe_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
          child: Text(
            "Categories",
            style: TextStyle(
              fontSize: 24,
              color: primaryDarkColor,
            ),
          ),
        ),
        CategoryListView(),
        Divider(color: primaryDarkColor, thickness: 1.0),
        Container(
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Text(
            "Recipes",
            style: TextStyle(
              fontSize: 24,
              color: primaryDarkColor,
            ),
          ),
        ),
        RecipeListView(),
      ],
    );
  }
}
