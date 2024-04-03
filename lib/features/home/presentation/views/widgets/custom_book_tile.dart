import 'package:flutter/material.dart';

class CustomBookTile extends StatelessWidget {
  final String imgUrl;
  const CustomBookTile({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
