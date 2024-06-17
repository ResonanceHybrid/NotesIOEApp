import 'package:flutter/material.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class NewsResults extends StatelessWidget {
  const NewsResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: "News",
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'No News Yet, Chill :)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '• All the IOE updates/results will be here.',
              style: TextStyle(fontSize: 16),
              // textAlign: TextAlign.center,
            ),
            Text(
              '• All the recent events will be listed here.',
              style: TextStyle(fontSize: 16),
              // textAlign: TextAlign.center,
            ),
            // Text(
            //   '• Stay tuned for the latest announcements.',
            //   style: TextStyle(fontSize: 16),
            //   //textAlign: TextAlign.center,
            // ),
            Text(
              '• Updates on upcoming exams will be posted here.',
              style: TextStyle(fontSize: 16),
              // textAlign: TextAlign.center,
            ),
            Text(
              '• Important notices will be shared here.',
              style: TextStyle(fontSize: 16),
              // textAlign: TextAlign.center,
            ),
            //Text(
            // '• Please write in English language.',
            //style: TextStyle(fontSize: 16),
            // textAlign: TextAlign.center,
            // ),
          ],
        ),
      ),
    );
  }
}
