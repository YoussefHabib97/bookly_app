import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class BookActions extends StatelessWidget {
  final BookModel bookModel;
  const BookActions({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            buttonText: 'Free',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            buttonText: 'Preview',
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            backgroundColor: const Color(0xFFEF8262),
            fontSize: 16,
            textColor: Colors.white,
            onPressed: () {
              launchCustomUrl(context, bookModel.volumeInfo.previewLink);
            },
          ),
        ),
      ],
    );
  }
}
