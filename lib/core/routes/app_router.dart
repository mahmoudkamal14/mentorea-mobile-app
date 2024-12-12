import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/functions/build_page_route.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/features/auth/presentation/screens/mentee_login_screen.dart';
import 'package:mentorea_mobile_app/features/auth/presentation/screens/mentee_register_screen.dart';
import 'package:mentorea_mobile_app/features/home/bottom_navigation_bar_screen.dart';
import 'package:mentorea_mobile_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:mentorea_mobile_app/features/onboarding/presentation/screens/splash_screen.dart';

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

      case Routes.loginScreen:
        return smoothEaseInOutPageRoute(
          const MenteeLoginScreen(),
          settings: settings,
        );

      case Routes.registerScreen:
        return smoothEaseInOutPageRoute(
          const MenteeRegisterScreen(),
          settings: settings,
        );

      case Routes.bottomNavBar:
        return smoothEaseInOutPageRoute(
          const BottomNavigationBarScreen(),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
