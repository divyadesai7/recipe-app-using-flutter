import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class RoundedButton extends StatelessWidget {
  final String buttonLabel;
  final Function() onPressed;

  const RoundedButton({required this.buttonLabel, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              buttonLabel,
              style: TextStyle(color: primaryLightColor),
            ),
            style: ElevatedButton.styleFrom(
              primary: primaryColor,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              textStyle: TextStyle(
                color: primaryLightColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ));
  }
}
