import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_items_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 36,
          ),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
          BestSellerListTile(),
        ],
      ),
    );
  }
}

class BestSellerListTile extends StatelessWidget {
  const BestSellerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2 / 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage(AssetData.testImage),
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Column(),
        ],
      ),
    );
  }
}
