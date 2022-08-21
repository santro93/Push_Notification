import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_push_notifications/service/local_notification.dart';
import 'package:flutter_push_notifications/view/push_notification.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.data.toString());
  print(message.notification!.title);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  // LocalNotification.initialize();
  runApp(MaterialApp(
    home: Push_Notification(),
    debugShowCheckedModeBanner: false,
  ));
}
