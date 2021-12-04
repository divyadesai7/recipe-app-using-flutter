import 'package:flutter/material.dart';
import 'package:recipe_app/models/category.dart';
import 'package:recipe_app/screens/home_screen/category_card.dart';

class CategoryListView extends StatelessWidget {
  final List<Category> categories = [
    new Category(title: 'Appetizers', image: 'appetizers.jpg'),
    new Category(title: 'Main Course', image: 'main-course.jpg'),
    new Category(title: 'Desserts', image: 'desserts.jpg'),
    new Category(title: 'Mocktails', image: 'mocktails.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.25,
      width: double.infinity,
      color: Colors.pink,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
