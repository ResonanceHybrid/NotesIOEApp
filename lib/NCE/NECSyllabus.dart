import 'package:flutter/material.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class NECSyllabus extends StatelessWidget {
  const NECSyllabus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'NEC Syllabus',
        rightIcon: Icons.home,
        onRightIconTap: () {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InsideButtons(
              text: 'Computer Engineering (BCT)',
              icon: Icons.computer,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Computer_NEC.pdf');
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Civil Engineering (BCE)',
              icon: Icons.construction,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Civil_NEC.pdf');
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electronics and Communication (BEI)',
              icon: Icons.signal_cellular_connected_no_internet_4_bar_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Electronics_NEC.pdf');
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electrical Engineering (BEL)',
              icon: Icons.connect_without_contact,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Electrical_NEC.pdf');
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Mechanical Engineering (BME)',
              icon: Icons.car_repair,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Mechanical_NEC.pdf');
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Architecture Engineering (B.Arch)',
              icon: Icons.design_services,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Architecture_NEC.pdf');
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Geomatics Engineering (BGE)',
              icon: Icons.landscape,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Geomatics_NEC.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
