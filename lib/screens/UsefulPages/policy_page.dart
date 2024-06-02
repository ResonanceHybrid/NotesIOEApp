import 'package:flutter/material.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class PolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: "Policy",
      ),
      body: Center(
        child: Text('Policy details will be displayed here.'),
      ),
    );
  }
}
