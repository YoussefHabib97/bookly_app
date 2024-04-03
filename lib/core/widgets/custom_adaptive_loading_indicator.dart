import 'package:flutter/material.dart';

class CustomAdaptiveLoadingIndicator extends StatelessWidget {
  const CustomAdaptiveLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
