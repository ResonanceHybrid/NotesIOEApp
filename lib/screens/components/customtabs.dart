import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs_lite.dart';

void launchURL(BuildContext context, String url) async {
  final theme = Theme.of(context);
  try {
    await launchUrl(
      Uri.parse(url),
      options: LaunchOptions(
        barColor: theme.colorScheme.surface,
        onBarColor: theme.colorScheme.onSurface,
        barFixingEnabled: false,
      ),
    );
  } catch (e) {
    debugPrint('Error launching URL: $e');
  }
}
