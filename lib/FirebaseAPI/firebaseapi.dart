import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ioe/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirebaseAPI {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification(BuildContext context) async {
    NotificationSettings settings =
        await _firebaseMessaging.requestPermission();
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }

    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _handleMessage(context, message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleMessage(context, message);
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    await _saveNotification(message);
  }

  Future<void> _handleMessage(
      BuildContext context, RemoteMessage message) async {
    await _saveNotification(message);

    String? link = message.data['link'];
    if (link != null && !kIsWeb) {
      Navigator.pushNamedAndRemoveUntil(
        navigatorKey.currentState!.context,
        link,
        (route) => false,
      );
    } else {
      Navigator.pushNamedAndRemoveUntil(
        navigatorKey.currentState!.context,
        '/notification',
        (route) => false,
      );
    }
  }

  static Future<void> _saveNotification(RemoteMessage message) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> notifications = prefs.getStringList('notifications') ?? [];

    bool notificationExists = notifications.any((notification) {
      var decodedNotification = jsonDecode(notification);
      return decodedNotification['title'] == message.notification?.title &&
          decodedNotification['body'] == message.notification?.body;
    });

    if (!notificationExists) {
      notifications.add(jsonEncode({
        'title': message.notification?.title ?? 'No Title',
        'body': message.notification?.body ?? 'No Body',
        'link': message.data['link'] ?? ''
      }));
      await prefs.setStringList('notifications', notifications);
    }
  }
}
