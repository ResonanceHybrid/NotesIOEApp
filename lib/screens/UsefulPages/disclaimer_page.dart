import 'package:flutter/material.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class DisclaimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(heading: "Disclaimer"),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   "Disclaimer",
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            SizedBox(height: 10),
            Text(
              "We are doing our best to prepare the content of this app. However, Notes IOE cannot warranty the expressions and suggestions of the contents, as well as its accuracy. In addition, to the extent permitted by the law, Notes IOE shall not be responsible for any losses and/or damages due to the usage of the information on our app.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "By using our app, you hereby consent to our disclaimer and agree to its terms.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Any links contained in our app may lead to external sites are provided for convenience only. Any information or statements that appeared in these sites or app are not sponsored, endorsed, or otherwise approved by Notes IOE. For these external sites, Notes IOE cannot be held liable for the availability of, or the content located on or through it. Plus, any losses or damages occurred from using these contents or the internet generally.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
