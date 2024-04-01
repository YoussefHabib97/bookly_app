import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32.0,
        bottom: 24,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AssetData.logo,
            height: 16,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
          ),
        ],
      ),
    );
  }
}
