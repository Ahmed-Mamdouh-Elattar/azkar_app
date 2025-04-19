import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.text,
    required this.textColor,
    this.onPressed,
    this.style,
    super.key,
  });
  final String text;
  final void Function()? onPressed;
  final ButtonStyle? style;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: style,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor,

          fontSize: 18,
        ),
      ),
    );
  }
}
