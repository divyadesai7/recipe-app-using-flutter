import 'package:flutter/material.dart';
import 'package:recipe_app/components/text_field_container.dart';
import 'package:recipe_app/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const RoundedInputField({
    required this.hintText,
    required this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: obscureText,
        onChanged: (value) {},
        cursorColor: primaryLightColor,
        style: TextStyle(
          color: primaryLightColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          icon: Icon(icon, color: primaryLightColor),
          hintText: hintText,
          hintStyle: TextStyle(color: primaryLightColor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
