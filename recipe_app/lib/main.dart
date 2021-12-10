import 'package:flutter/material.dart';
import 'package:recipe_app/screens/home_screen/home_screen.dart';
// import 'package:recipe_app/screens/home_screen/home_screen.dart';
// import 'package:recipe_app/screens/login_screen/login_screen.dart';
import 'package:recipe_app/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
