import 'package:flutter/material.dart';
import 'package:recipe_app/components/rounded_button.dart';
import 'package:recipe_app/components/rounded_input_field.dart';
import 'package:recipe_app/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Container(
          height: size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: size.height * 0.1),
              Text(
                "Login to your account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Image.asset("lib/assets/icons/login.png"),
              RoundedInputField(
                hintText: "Enter your email address",
                icon: Icons.person,
              ),
              RoundedInputField(
                obscureText: true,
                hintText: "Enter your password",
                icon: Icons.lock,
              ),
              RoundedButton(buttonLabel: "Login", onPressed: () {}),
              SizedBox(height: size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
