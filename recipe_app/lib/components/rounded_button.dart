import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class RoundedButton extends StatelessWidget {
  final String buttonLabel;
  final Color backgroundColor;
  final Color labelColor;
  final Function() onPressed;

  const RoundedButton({
    required this.buttonLabel,
    required this.onPressed,
    required this.backgroundColor,
    required this.labelColor,
  });

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
              style: TextStyle(
                color: labelColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: backgroundColor,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            ),
          ),
        ));
  }
}
