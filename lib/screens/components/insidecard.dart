import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/subjectnavigation.dart';

class InsideCard extends StatelessWidget {
  final String semester;
  final List<String> subjects;

  const InsideCard({
    required this.semester,
    required this.subjects,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 18.0),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(
          color: kblue.withOpacity(0.5), // Blurry border
          width: 1,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: kblue, // Background color
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              semester,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text color
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: subjects.map((subject) {
                return GestureDetector(
                  onTap: () {
                    SubjectNavigator.navigateToSubjectPage(context, subject);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0), // Reduced space between subjects
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      trailing: Icon(Icons.arrow_forward,
                          color: Colors.white), // Arrow icon to the right
                      title: Text(
                        subject,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white, // Text color
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
