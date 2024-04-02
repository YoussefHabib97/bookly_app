import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              BookDetailsCustomAppBar(),
              BookDetailsSection(),
              Expanded(
                child: SizedBox(height: 32),
              ),
              SimilarBooksSection(),
              Expanded(
                child: SizedBox(height: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
