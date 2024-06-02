import 'package:flutter/material.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class DisclaimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(heading: "Disclaimer"),
      body: Center(
        child: Text('Disclaimer details will be displayed here.'),
      ),
    );
  }
}
