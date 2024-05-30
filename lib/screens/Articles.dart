import 'package:flutter/material.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: OtherPageAppBar(heading: "Articles", rightIcon: Icons.home));
  }
}
