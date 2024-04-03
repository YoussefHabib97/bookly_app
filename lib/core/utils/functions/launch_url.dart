import 'package:bookly_app/core/widgets/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(BuildContext context, String? url) async {
  if (url != null) {
    Uri parsedUrl = Uri.parse(url);
    try {
      if (await canLaunchUrl(parsedUrl)) {
        await launchUrl(parsedUrl);
      } else {
        if (context.mounted) {
          showCustomSnackBar(context, "Cannot launch $parsedUrl");
        }
      }
    } catch (e) {
      rethrow;
    }
  }
}
