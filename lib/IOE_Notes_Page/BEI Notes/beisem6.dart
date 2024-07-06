import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/Subject_Pages/AntennaandPropagation.dart';
import 'package:ioe/Subject_Pages/Communication%20System%20I.dart';
import 'package:ioe/Subject_Pages/Embedded%20System.dart';
import 'package:ioe/Subject_Pages/english.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class BEISem6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BEI Semester 6 Notes',
        rightIcon: Icons.home,
        onRightIconTap: () {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
        child: ListView(
          children: [
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Communication English',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          CommunicationEnglish(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Embedded System',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => EmbeddedSystem(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Antenna and Propagation',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          AntennaandPropagation(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Communication System I',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          CommunicationSystemI(initialTabIndex: 0)),
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
