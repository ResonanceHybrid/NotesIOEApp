// import 'package:flutter/material.dart';
// import 'package:flutter_custom_tabs/flutter_custom_tabs_lite.dart';
// import 'package:ioe/screens/components/otherpageappbar.dart';

// class ContactUsPage extends StatelessWidget {
//   final String contactUrl =
//       "https://notesioe.com/contact"; // Your contact page URL

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: OtherPageAppBar(heading: "Contact Us"),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => _launchURL(context, contactUrl),
//           child: Text('Open Contact Page'),
//         ),
//       ),
//     );
//   }
// }

// void _launchURL(BuildContext context, String url) async {
//   final theme = Theme.of(context);
//   try {
//     await launchUrl(
//       Uri.parse(url),
//       options: LaunchOptions(
//         barColor: theme.colorScheme.surface,
//         onBarColor: theme.colorScheme.onSurface,
//         barFixingEnabled: false,
//       ),
//     );
//   } catch (e) {
//     debugPrint('Error launching URL: $e');
//   }
// }
