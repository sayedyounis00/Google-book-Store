import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color bGColor;
  final String text;
  final Color textColor;
  final BorderRadiusGeometry borderRadius;
  const CustomButton(
      {super.key,
      required this.bGColor,
      required this.textColor,
      required this.borderRadius,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: bGColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      child: Text(
        text,
        style: Styles.textStyle18
            .copyWith(color: textColor, fontWeight: FontWeight.w900),
      ),
    );
  }
}
