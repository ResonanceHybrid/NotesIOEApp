import 'package:flutter/material.dart';
import 'package:ioe/IOE_Notes_Page/BCT%20Notes/bctsem4.dart';
import 'package:ioe/IOE_Notes_Page/BCT%20Notes/bctsem5.dart';
import 'package:ioe/IOE_Notes_Page/BCT%20Notes/bctsem6.dart';
import 'package:ioe/IOE_Notes_Page/BCT%20Notes/bctsem7.dart';
import 'package:ioe/IOE_Notes_Page/BCT%20Notes/bctsem8.dart';
import 'package:ioe/IOE_Questions_Page/BCT%20Questions/bctsem1question.dart';
import 'package:ioe/IOE_Questions_Page/BCT%20Questions/bctsem2question.dart';
import 'package:ioe/IOE_Questions_Page/BCT%20Questions/bctsem3question.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCEQuestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCE Questions',
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
                    MaterialPageRoute(builder: (context) => BCTQuestionSem1()),
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
                    MaterialPageRoute(builder: (context) => BCTQuestionsSem2()),
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
                    MaterialPageRoute(builder: (context) => BCTQuestionsSem3()),
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
                    MaterialPageRoute(builder: (context) => BCTSem4()),
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
                    MaterialPageRoute(builder: (context) => BCTSem5()),
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
                    MaterialPageRoute(builder: (context) => BCTSem6()),
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
                    MaterialPageRoute(builder: (context) => BCTSem7()),
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
                    MaterialPageRoute(builder: (context) => BCTSem8()),
                  );
                },
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
