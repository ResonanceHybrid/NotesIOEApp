import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/Subject_Pages/Artificial%20Intelligence.dart';
import 'package:ioe/Subject_Pages/Database%20Management%20System.dart';
import 'package:ioe/Subject_Pages/EngineeringEconomics.dart';
import 'package:ioe/Subject_Pages/Object%20Oriented%20Analysis%20and%20Design.dart';
import 'package:ioe/Subject_Pages/Operating%20System.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class BCTSem6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCT Semester 6 Notes',
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
              text: 'Engineering Economics',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          EngineeringEconomics(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Object Oriented Analysis and Design',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          ObjectOrientedAnalysis(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Artifical Intelligence',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          ArtificialIntelligence(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Operating System',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          OperatingSystem(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Database Management System',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          DatabaseManagementSystem(initialTabIndex: 0)),
                );
              },
            ),
            // SizedBox(height: 10.0),
            // InsideButtons(
            //   text: 'Data Communication',
            //   icon: Icons.arrow_forward,
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       CupertinoPageRoute(builder: (context) => DataCommunication()),
            //     );
            //   },
            // ),
            // Add other notes options here
          ],
        ),
      ),
    );
  }
}
