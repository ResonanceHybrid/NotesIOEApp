import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/customtabs.dart';
import 'package:ioe/screens/components/otherpageappbar.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(heading: "About Us", rightIcon: Icons.person),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSection(
                      title: 'Our Mission:',
                      description:
                          'At Notes IOE, we strive to provide a comprehensive and user-friendly platform for engineering and +2 students. We aim to empower students with valuable resource materials to excel in their academic journey by making learning efficient, accessible, and enjoyable.',
                    ),
                    SizedBox(height: 20),
                    _buildSection(
                      title: 'Our Vision:',
                      description:
                          'Our vision is to become the go-to destination for students seeking top-notch educational resources. From notes and past questions to syllabi and beyond, we believe that every student deserves access to high-quality study materials that enhance their learning experience and boost their academic performance.',
                    ),
                    SizedBox(height: 20),
                    _buildSection(
                      title: 'Our Commitment:',
                      description:
                          'We are committed to creating an inclusive online space where students can find support, guidance, and resources that truly make a difference in their educational pursuits. Join us in our mission to revolutionize the way students learn and prepare for exams.',
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialIcon(context, 'assets/icon/fab.png',
                            'notesioe.com', 'https://notesioe.com'),
                        SizedBox(width: 20),
                        _buildSocialIcon(context, 'assets/icon/facebook.png',
                            'notesioe', 'https://www.facebook.com/notesioe'),
                        SizedBox(width: 20),
                        _buildSocialIcon(context, 'assets/icon/instagram.png',
                            '@notesioe', 'https://www.instagram.com/notesioe'),
                        SizedBox(width: 20),
                        _buildSocialIcon(
                            context,
                            'assets/icon/reddit.png',
                            'u/NotesIOE',
                            'https://www.reddit.com/user/NotesIOE'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required String description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: kblue),
        ),
        SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildSocialIcon(
      BuildContext context, String iconPath, String label, String url) {
    return GestureDetector(
      onTap: () {
        _launchURL(context, url);
      },
      child: Column(
        children: [
          Image.asset(iconPath, width: 30, height: 30),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL(BuildContext context, String url) {
    launchURL(context, url);
  }
}
