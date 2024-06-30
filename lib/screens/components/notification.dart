import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ioe/screens/components/constants.dart';
import 'package:ioe/screens/components/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs_lite.dart';

void launchURL(BuildContext context, String url) async {
  final theme = Theme.of(context);
  try {
    await launchUrl(
      Uri.parse(url),
      options: LaunchOptions(
        barColor: theme.colorScheme.surface,
        onBarColor: theme.colorScheme.onSurface,
        barFixingEnabled: false,
      ),
    );
  } catch (e) {
    debugPrint('Error launching URL: $e');
  }
}

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isLoading = true;
  List<String> notifications = [];

  @override
  void initState() {
    super.initState();
    _initializeFCM();
    // Start loading after 500 milliseconds
    Timer(Duration(milliseconds: 500), () {
      _loadNotifications();
    });
  }

  Future<void> _initializeFCM() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    // Request permission for iOS devices
    await messaging.requestPermission();

    // Get the FCM token
    String? token = await messaging.getToken();
    print("FCM Token: $token");

    // Save the token in SharedPreferences if needed
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('fcm_token', token ?? '');
  }

  Future<void> _loadNotifications() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      notifications = prefs.getStringList('notifications') ?? [];
      isLoading = false;
    });
  }

  Future<void> _refreshNotifications() async {
    await Future.delayed(Duration(milliseconds: 500));
    await _loadNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarTop(
              pageTitle: 'Notifications',
              onDrawerIconPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            Expanded(
              child: isLoading
                  ? _buildLoadingAnimation()
                  : RefreshIndicator(
                      color: kblue,
                      onRefresh: _refreshNotifications,
                      child: ListView.builder(
                        itemCount:
                            notifications.isEmpty ? 1 : notifications.length,
                        itemBuilder: (context, index) {
                          if (notifications.isEmpty) {
                            return const ListTile(
                              title: Center(
                                child: Text(
                                  'No notifications',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            );
                          }
                          String notification = notifications[index];
                          Map<String, dynamic> notificationData =
                              jsonDecode(notification);
                          String notificationTitle =
                              notificationData['title'] ?? 'No Title';
                          String notificationBody =
                              notificationData['body'] ?? 'No Body';
                          String? notificationLink = notificationData['link'];
                          return Dismissible(
                            key: Key(notification),
                            onDismissed: (direction) async {
                              setState(() {
                                notifications.removeAt(index);
                              });
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setStringList(
                                  'notifications', notifications);
                            },
                            background: Container(
                              color: Colors.red[100],
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(right: 20.0),
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                            child: NotificationTile(
                              title: notificationTitle,
                              body: notificationBody,
                              link: notificationLink,
                            ),
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingAnimation() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String body;
  final String? link;

  const NotificationTile({
    Key? key,
    required this.title,
    required this.body,
    this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            body,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          leading: CircleAvatar(
            backgroundColor: kblue,
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (link != null && link!.isNotEmpty) {
              launchURL(context, link!);
            } else {
              Navigator.pushNamed(context, '/notification');
            }
          },
        ),
      ),
    );
  }
}
