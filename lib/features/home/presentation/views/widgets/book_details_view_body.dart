import 'package:flutter/material.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const BookDetailsCustomAppBar(),
              BookDetailsSection(
                bookModel: bookModel,
              ),
              const Expanded(
                child: SizedBox(height: 32),
              ),
              const SimilarBooksSection(),
              const Expanded(
                child: SizedBox(height: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
