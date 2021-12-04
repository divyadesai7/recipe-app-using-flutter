import 'package:flutter/material.dart';

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
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ));
  }
}
