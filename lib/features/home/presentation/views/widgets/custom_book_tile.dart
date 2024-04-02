import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/assets.dart';

class CustomBookTile extends StatelessWidget {
  const CustomBookTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage(AssetData.testImage),
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
