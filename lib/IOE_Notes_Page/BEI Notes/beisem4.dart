import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/Subject_Pages/Computer%20Graphics.dart';
import 'package:ioe/Subject_Pages/appliedmath.dart';
import 'package:ioe/Subject_Pages/datastructureandalgorithm.dart';
import 'package:ioe/Subject_Pages/discretestructure.dart';
import 'package:ioe/Subject_Pages/numericalmethod.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class BEISem4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BEI Semester 4 Notes',
        rightIcon: Icons.home,
        onRightIconTap: () {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Data Structure and Algorithm',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => DSA(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Applied Math',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          AppliedMathematics(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Discrete Structure',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          DiscreteStructure(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Computer Graphics',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          ComputerGraphics(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Numerical Method',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          NumericalMethod(initialTabIndex: 0)),
                );
              },
            ),
            // Add other notes options here
          ],
        ),
      ),
    );
  }
}
