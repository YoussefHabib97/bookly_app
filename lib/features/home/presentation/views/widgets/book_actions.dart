import 'package:flutter/material.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            buttonText: '19.99 €',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            buttonText: 'Free Preview',
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            backgroundColor: Color(0xFFEF8262),
            fontSize: 16,
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
