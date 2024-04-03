import 'package:bookly_app/core/widgets/custom_adaptive_loading_indicator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/home/presentation/manager/latest_books_cubit/latest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_info_list_tile.dart';

class LatestBooksListView extends StatelessWidget {
  const LatestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LatestBooksCubit, LatestBooksState>(
      builder: (context, state) {
        if (state is LatestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: BookInfoListTile(
                  bookModel: state.books[index],
                ),
              ),
            ),
          );
        } else if (state is LatestBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errMessage: state.errMessage),
          );
        }
        return const SliverToBoxAdapter(
          child: CustomAdaptiveLoadingIndicator(),
        );
      },
    );
  }
}
