import 'package:flutter/material.dart';
import 'package:recipe_app/components/rounded_button.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/screens/login_screen/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryLightColor,
        body: Container(
          height: size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: size.height * 0.1),
              Text(
                "WELCOME TO CHEF'S SPECIAL",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "lib/assets/images/indian-housewife-working-like-super-woman.png",
                height: size.height * 0.45,
              ),
              RoundedButton(
                buttonLabel: "LOGIN",
                onPressed: () {
                  print('Clicked on log in..');
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              SizedBox(height: size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
