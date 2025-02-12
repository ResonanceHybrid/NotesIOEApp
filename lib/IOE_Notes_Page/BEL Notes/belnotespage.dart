import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/IOE_Notes_Page/BEL%20Notes/belsem1.dart';
import 'package:ioe/IOE_Notes_Page/BEL%20Notes/belsem2.dart';
import 'package:ioe/IOE_Notes_Page/BEL%20Notes/belsem3.dart';
import 'package:ioe/IOE_Notes_Page/BEL%20Notes/belsem4.dart';
import 'package:ioe/IOE_Notes_Page/BEL%20Notes/belsem5.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class BELNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BEL Notes',
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
                    CupertinoPageRoute(builder: (context) => BELSem1()),
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
                    CupertinoPageRoute(builder: (context) => BELSem2()),
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
                    CupertinoPageRoute(builder: (context) => BELSem3()),
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
                    CupertinoPageRoute(builder: (context) => BELSem4()),
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
                    CupertinoPageRoute(builder: (context) => BELSem5()),
                  );
                },
              ),
              // SizedBox(height: 10),
              // InsideButtons(
              //   text: 'BEI Semester 6',
              //   icon: Icons.battery_5_bar,
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       CupertinoPageRoute(builder: (context) => BCTSem6()),
              //     );
              //   },
              // ),
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
