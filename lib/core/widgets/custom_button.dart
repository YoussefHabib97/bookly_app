import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor, textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final void Function()? onPressed;

  const CustomButton({
    super.key,
    required this.buttonText,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.borderRadius,
    this.fontSize = 18,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
