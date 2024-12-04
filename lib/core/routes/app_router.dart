import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/functions/build_page_route.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/features/emp_page.dart';
import 'package:mentorea_mobile_app/features/onboarding/screens/onboarding_screen.dart';
import 'package:mentorea_mobile_app/features/onboarding/screens/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final String routeName = settings.name!;

    switch (routeName) {
      case Routes.splashScreen:
        return smoothEaseInOutPageRoute(
          const SplashScreen(),
          settings: settings,
        );
      case Routes.onboardingScreen:
        return smoothEaseInOutPageRoute(
          const OnboardingScreen(),
          settings: settings,
        );
      case Routes.EmptyPage:
        return smoothEaseInOutPageRoute(
          const EmptyPage(),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
