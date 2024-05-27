import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/downloads.dart';
import 'package:ioe/screens/components/demo.dart';
import 'package:ioe/screens/components/home_content.dart';
import 'package:ioe/screens/components/notification.dart';
import 'package:ioe/screens/components/search.dart';
import 'package:ioe/screens/components/sidebarnav.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<String> notifications = []; // Instance member
  late List<Widget> _pages; // Declare _pages here without initializing

  @override
  void initState() {
    super.initState();
    // Initialize _pages here
    _pages = [
      HomeContent(),
      Demo(),
      NotificationPage(),
      DownloadPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: SideBarNavigation(),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: kblue,
            inactiveColor: Colors.grey[600],
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.read_more),
            title: Text('Quizes'),
            inactiveColor: Colors.grey[600],
            activeColor: kblue,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notification_add),
            title: Text('Notification'),
            inactiveColor: Colors.grey[600],
            activeColor: kblue,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.download),
            title: Text('Downloads'),
            inactiveColor: Colors.grey[600],
            activeColor: kblue,
          ),
        ],
      ),
    );
  }
}

class AppBarTop extends StatelessWidget implements PreferredSizeWidget {
  final String pageTitle;
  final VoidCallback onDrawerIconPressed; // Parameter to receive the page title

  const AppBarTop({
    required this.pageTitle, // Require page title when creating the widget
    Key? key,
    required this.onDrawerIconPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8), // Add top padding
      decoration: BoxDecoration(
        color: kblue, // Add blue background color
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(0.1), // Adjust the blur color and opacity
            blurRadius: 10, // Adjust the blur radius
            spreadRadius: 0, // No spread
            offset: Offset(0, 3), // Offset to create a bottom blur
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10), // Adjust the border radius
          bottomRight: Radius.circular(10), // Adjust the border radius
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onDrawerIconPressed, // Use the callback function
            icon: Icon(
              Icons.dashboard_rounded,
              color: Colors.white,
            ),
          ),
          Text(
            pageTitle, // Display the received page title
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Adjust text color
              fontStyle: FontStyle.italic,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) =>
                      SearchLogic(), // Replace with your search box page widget
                ),
              );
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(64); // Adjust the preferred height of the app bar
}
