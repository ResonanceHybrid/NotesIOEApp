import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/IOE_Notes_Page/BCE%20Notes/bcesem1.dart';
import 'package:ioe/IOE_Notes_Page/BCE%20Notes/bcesem2.dart';
import 'package:ioe/IOE_Notes_Page/BCE%20Notes/bcesem3.dart';
import 'package:ioe/IOE_Notes_Page/BCE%20Notes/bcesem4.dart';
import 'package:ioe/IOE_Notes_Page/BCE%20Notes/bcesem5.dart';
import 'package:ioe/IOE_Notes_Page/BCE%20Notes/bcesem6.dart';
import 'package:ioe/IOE_Notes_Page/BCE%20Notes/bcesem7.dart';
import 'package:ioe/IOE_Notes_Page/BCE%20Notes/bcesem8.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class BCENotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCE Notes',
        rightIcon: Icons.home,
        onRightIconTap: () {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InsideButtons(
                text: 'BCE Semester 1',
                icon: Icons.battery_0_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BCESem1()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BCE Semester 2',
                icon: Icons.battery_1_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BCESem2()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BCE Semester 3',
                icon: Icons.battery_2_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BCESem3()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BCE Semester 4',
                icon: Icons.battery_3_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BCESem4()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BCE Semester 5',
                icon: Icons.battery_4_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BCESem5()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BCE Semester 6',
                icon: Icons.battery_5_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BCESem6()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BCE Semester 7',
                icon: Icons.battery_6_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BCESem7()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BCE Semester 8',
                icon: Icons.battery_charging_full,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BCESem8()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
