import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs_lite.dart';
import 'package:ioe/screens/UsefulPages/aboutus_page.dart';
import 'package:ioe/screens/UsefulPages/contactus_page.dart';
import 'package:ioe/screens/UsefulPages/disclaimer_page.dart';
import 'package:ioe/screens/UsefulPages/policy_page.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/customtabs.dart';

class SideBarNavigation extends StatelessWidget {
  const SideBarNavigation({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 200,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: kblue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Image.asset(
                      "assets/images/logo.png",
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Building Bridges to\nKnowledge and Beyond!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.policy),
            title: Text('Policy'),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => PolicyPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Disclaimer'),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => DisclaimerPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => AboutUsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.contact_phone,
            ),
            title: Text('Contact Us'),
            onTap: () => _launchURL(context, "https://notesioe.com/contact"),
          ),
          // ListTile(
          //   leading: Icon(Icons.star),
          //   title: Text('Rate Us'),
          //   onTap: () {
          //     // Navigate to Rate Us page
          //   },
          // ),
          ListTile(
              leading: Icon(Icons.report),
              title: Text('Report An Issue'),
              onTap: () => _launchURL(context, "https://notesioe.com/contact")),

          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              signUserOut();
            },
          ),
        ],
      ),
    );
  }
}

void _launchURL(BuildContext context, String url) {
  launchURL(context, url);
}
