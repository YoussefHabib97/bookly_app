import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingWidget extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final num? averageRating, ratingCount;
  const BookRatingWidget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.averageRating,
    this.ratingCount,
  });

  @override
  Widget build(BuildContext context) {
    if (ratingCount != null) {
      return Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          const FaIcon(
            FontAwesomeIcons.solidStar,
            size: 18,
            color: Color(0xFFFFDD4F),
          ),
          const SizedBox(width: 6.3),
          Text(
            averageRating.toString(),
            style: Styles.textStyle16,
          ),
          const SizedBox(width: 5),
          Opacity(
            opacity: 0.5,
            child: Text(
              ('($ratingCount)'),
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      );
    }
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Text(
          'Not yet rated',
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
