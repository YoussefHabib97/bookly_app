import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookTile extends StatelessWidget {
  final String imgUrl;
  const CustomBookTile({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            color: Colors.red,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
