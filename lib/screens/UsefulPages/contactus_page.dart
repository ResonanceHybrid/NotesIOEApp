import 'package:flutter/material.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(heading: "Contact US"),
      body: Center(
        child: Text('Contact details will be displayed here.'),
      ),
    );
  }
}
