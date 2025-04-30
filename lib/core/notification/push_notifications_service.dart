import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mentorea_mobile_app/core/notification/local_notifications_service.dart';

class PushNotificationsService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  static Future init() async {
    await messaging.requestPermission();
    await messaging.getToken().then((value) {
      log('Firebase Messaging Token: $value');
    });

    // foreground only
    handleForegroundMessage();
  }

  static void handleForegroundMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      LocalNotificationService.showBasicNotification(message);
    });
  }
}
