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
        backgroundColor: bgColor,
        body: Container(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: size.height * 0.1),
              Text(
                "WELCOME TO CHEF'S SPECIAL",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "lib/assets/icons/welcome.png",
                height: size.height * 0.45,
              ),
              RoundedButton(
                buttonLabel: "LOGIN",
                onPressed: () {
                  print('Clicked on log in..');
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                backgroundColor: primaryColor,
                labelColor: primaryLightColor,
              ),
              // Text()
              SizedBox(height: size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
