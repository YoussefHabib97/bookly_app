import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/constants.dart';
// import 'package:bookly_app/features/home/presentation/views/widgets/book_info_list_tile.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // CustomSearchTextField(),
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              label: const Text("Search"),
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Opacity(
                  opacity: 0.8,
                  child: Icon(FontAwesomeIcons.magnifyingGlass),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Text(
            'Search Results',
            style: Styles.textStyle18,
          ),
        ),
        Expanded(
            child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return Container();
            // return const BookInfoListTile(bookModel: ,);
          },
        )),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
