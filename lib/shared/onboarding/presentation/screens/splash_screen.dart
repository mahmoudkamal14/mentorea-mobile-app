import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenRouteFunction(
      backgroundColor: const Color(0xff040B32),
      splash: Image.asset('assets/icons/Mentorea Icon.png'),
      splashIconSize: 200,
      pageTransitionType: PageTransitionType.topToBottom,
      animationDuration: const Duration(milliseconds: 800),
      screenRouteFunction: () => startedScreen(),
    );
  }

  Future<String> startedScreen() async {
    var login = CacheHelper.getData(key: CacheHelperKeys.login);
    var onBoarding = CacheHelper.getData(key: CacheHelperKeys.onBoarding);
    String? token =
        await CacheHelper.getSecuredData(key: CacheHelperKeys.accessToken);
    var language = CacheHelper.getData(key: CacheHelperKeys.languageScreen);

    if (token == null) {
      return Routes.userTypeScreen;
    } else if (login == Routes.menteeBottomNavBar) {
      return Routes.menteeBottomNavBar;
    } else if (login == Routes.mentorBottomNavBar) {
      return Routes.mentorBottomNavBar;
    } else if (onBoarding == true) {
      return Routes.userTypeScreen;
    } else if (language == true) {
      return Routes.onboardingScreen;
    } else {
      return Routes.languageScreen;
    }
  }
}
