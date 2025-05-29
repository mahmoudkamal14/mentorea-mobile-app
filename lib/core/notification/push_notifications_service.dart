import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/notification/local_notifications_service.dart';

class PushNotificationsService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  static Future init() async {
    await messaging.requestPermission();
    await messaging.getToken().then((value) {
      // save the token in secure storage
      CacheHelper.saveSecuredData(key: CacheHelperKeys.fcmToken, value: value!);
    });

    // foreground only
    handleForegroundMessage();

    // background only
    handleBackgroundMessage();
  }

  static void handleForegroundMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      LocalNotificationService.showBasicNotification(message);
    });
  }

  // this will be called when the app is in background or terminated
  // and the user taps on the notification
  static void handleBackgroundMessage() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      LocalNotificationService.showBasicNotification(message);
    });
  }
}
