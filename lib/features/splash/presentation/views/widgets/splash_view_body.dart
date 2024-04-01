import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(ProjectAssets.logo),
        const SizedBox(height: 16),
        const Text(
          "Read Books",
          textAlign: TextAlign.center,
        ),
        const Text(
          "Completely Free! 😊",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
