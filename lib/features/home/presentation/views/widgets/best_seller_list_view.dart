import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_tile.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(16),
          child: BookListTile(),
        );
      },
    );
    //   ListView.builder(
    // physics: const NeverScrollableScrollPhysics(),
    // padding: EdgeInsets.zero,
    // itemCount: 10,
    // itemBuilder: (context, index) => const Padding(
    //   padding: EdgeInsets.symmetric(vertical: 10),
    //   child: BestSellerListTile(),
    // ),
    // );
  }
}
