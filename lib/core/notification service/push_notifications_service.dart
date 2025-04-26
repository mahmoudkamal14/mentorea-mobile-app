import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mentorea_mobile_app/core/notification%20service/local_notifications_service.dart';

class PushNotificationsService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  static Future init() async {
    await messaging.requestPermission();
    await messaging.getToken().then((value) {});

    // foreground only
    handleForegroundMessage();
  }

  static void handleForegroundMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      LocalNotificationService.showBasicNotification(message);
    });
  }
}
