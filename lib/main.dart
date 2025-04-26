import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/notification%20service/local_notifications_service.dart';
import 'package:mentorea_mobile_app/core/notification%20service/push_notifications_service.dart';
import 'package:mentorea_mobile_app/core/routes/app_router.dart';
import 'package:mentorea_mobile_app/app/mentorea_app.dart';
import 'package:mentorea_mobile_app/firebase_options.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await CacheHelper.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await PushNotificationsService.init();
  await LocalNotificationService.init();
  await ScreenUtil.ensureScreenSize();
  runApp(MentoreaApp(appRouter: AppRouter()));
}
