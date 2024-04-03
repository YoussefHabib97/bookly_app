import 'package:bookly_app/core/widgets/custom_adaptive_loading_indicator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_info_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/core/utils/styles.dart';
// import 'package:bookly_app/features/home/presentation/views/widgets/book_info_list_tile.dart';
// import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<SearchCubit>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            onSubmitted: (value) => cubit.fetchSearchedBook(bookTitle: value),
            onChanged: (value) => cubit.searchTextFieldController.text = value,
            controller: cubit.searchTextFieldController,
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              label: const Text("Search"),
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () {
                  if (cubit.searchTextFieldController.text.isNotEmpty) {
                    cubit.fetchSearchedBook(
                        bookTitle: cubit.searchTextFieldController.text.trim());
                  }
                },
                icon: const Opacity(
                  opacity: 0.8,
                  child: Icon(FontAwesomeIcons.magnifyingGlass),
                ),
              ),
            ),
          ),
        ),
        BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            if (state is SearchSuccess) {
              return Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                      child: Text(
                        'Search Results',
                        style: Styles.textStyle18,
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        padding: const EdgeInsets.all(16),
                        itemCount: state.books.length,
                        separatorBuilder: (context, index) => const Divider(),
                        itemBuilder: (context, index) => BookInfoListTile(
                          bookModel: state.books[index],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else if (state is SearchInitial) {
              return const SizedBox();
            } else if (state is SearchFailure) {
              return CustomErrorWidget(errMessage: state.errMessage);
            }
            return const CustomAdaptiveLoadingIndicator();
          },
        ),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
