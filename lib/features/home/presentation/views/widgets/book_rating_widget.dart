import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FaIcon(
          FontAwesomeIcons.solidStar,
          size: 18,
          color: Color(0xFFFFDD4F),
        ),
        const SizedBox(width: 6.3),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xFF707070),
          ),
        ),
      ],
    );
  }
}
