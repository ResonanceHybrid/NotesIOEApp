import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/IOE_Notes_Page/BEI%20Notes/beisem1.dart';
import 'package:ioe/IOE_Notes_Page/BEI%20Notes/beisem2.dart';
import 'package:ioe/IOE_Notes_Page/BEI%20Notes/beisem3.dart';
import 'package:ioe/IOE_Notes_Page/BEI%20Notes/beisem4.dart';
import 'package:ioe/IOE_Notes_Page/BEI%20Notes/beisem5.dart';
import 'package:ioe/IOE_Notes_Page/BEI%20Notes/beisem6.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class BEINotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BEI Notes',
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
                text: 'BEI Semester 1',
                icon: Icons.battery_0_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BEISem1()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BEI Semester 2',
                icon: Icons.battery_1_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BEISem2()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BEI Semester 3',
                icon: Icons.battery_2_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BEISem3()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BEI Semester 4',
                icon: Icons.battery_3_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BEISem4()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BEI Semester 5',
                icon: Icons.battery_4_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BEISem5()),
                  );
                },
              ),
              SizedBox(height: 10),
              InsideButtons(
                text: 'BEI Semester 6',
                icon: Icons.battery_5_bar,
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => BEISem6()),
                  );
                },
              ),
              // SizedBox(height: 10),
              // InsideButtons(
              //   text: 'BEI Semester 7',
              //   icon: Icons.battery_6_bar,
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       CupertinoPageRoute(builder: (context) => BCTSem7()),
              //     );
              //   },
              // ),
              // SizedBox(height: 10),
              // InsideButtons(
              //   text: 'BEI Semester 8',
              //   icon: Icons.battery_charging_full,
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       CupertinoPageRoute(builder: (context) => BCTSem8()),
              //     );
              //   },
              // ),
              // SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
