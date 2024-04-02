import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_tile.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const BookDetailsCustomAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: const CustomBookTile(),
        ),
        const SizedBox(
          height: 32,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.75),
          ),
        ),
        const SizedBox(height: 16),
        const BookRatingWidget(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 32),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: BookActions(),
        ),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You may also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: SimilarBooksListView(),
        ),
      ],
    );
  }
}
