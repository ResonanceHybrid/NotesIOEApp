import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/Subject_Pages/digitallogic.dart';
import 'package:ioe/Subject_Pages/electriccircuittheory.dart';
import 'package:ioe/Subject_Pages/electricdeviceandcircuit.dart';
import 'package:ioe/Subject_Pages/electromagnetism.dart';
import 'package:ioe/Subject_Pages/engineeringmath3.dart';
import 'package:ioe/Subject_Pages/objectorientedprogramming.dart.dart';
import 'package:ioe/Subject_Pages/theoryofcomputation.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class BELSem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BEL Semester 3 Notes',
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
              text: 'Electric Circuit Theory',
              icon: Icons.loop,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          ElectricCircuitTheory(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electromagnetism',
              icon: Icons.wifi,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          Electromagnetics(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electric Device And Circuit',
              icon: Icons.device_hub,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => Edc(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Digital Logic',
              icon: Icons.storage,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => DigitalLogic(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electrical Engineering Material',
              icon: Icons.stacked_bar_chart,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      //electrical engg material syllabys needed
                      builder: (context) => Toc(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Object Oriented Programming',
              icon: Icons.code,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => Oop(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineering Math III',
              icon: Icons.calculate,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          EngineeringMath3(initialTabIndex: 0)),
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
