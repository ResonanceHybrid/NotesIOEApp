import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/IOE_Notes_Page/BCE%20Notes/bcenotespage.dart';
import 'package:ioe/IOE_Notes_Page/BCT%20Notes/bctnotespage.dart';
import 'package:ioe/IOE_Notes_Page/BEI%20Notes/beinotespage.dart';
import 'package:ioe/IOE_Notes_Page/BEL%20Notes/belnotespage.dart';

import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class IOENotes extends StatelessWidget {
  const IOENotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'IOE Notes',
        rightIcon: Icons.home,
        onRightIconTap: () {
          Navigator.pop(context);
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
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => BCTNotes(),
                  ),
                );
              },
            ),
            SizedBox(height: 15.0),
            InsideButtons(
              text: 'Civil Engineering (BCE)',
              icon: Icons.construction,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => BCENotes(),
                  ),
                );
              },
            ),
            SizedBox(height: 15.0),
            InsideButtons(
              text: 'Electronics and Information (BEI)',
              icon: Icons.signal_cellular_connected_no_internet_4_bar_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => BEINotes(),
                  ),
                );
              },
            ),
            SizedBox(height: 15.0),
            InsideButtons(
              text: 'Electrical Engineering (BEL)',
              icon: Icons.connect_without_contact,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => BELNotes(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
