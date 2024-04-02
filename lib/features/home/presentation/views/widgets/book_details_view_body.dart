import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_custom_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BookDetailsCustomAppBar(),
      ],
    );
  }
}
