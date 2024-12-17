import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/functions/build_page_route.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/features/auth/presentation/screens/mentee_login_screen.dart';
import 'package:mentorea_mobile_app/features/auth/presentation/screens/mentee_register_screen.dart';
import 'package:mentorea_mobile_app/features/home/mentee_bottom_navigation_bar_screen.dart';
import 'package:mentorea_mobile_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:mentorea_mobile_app/features/onboarding/presentation/screens/splash_screen.dart';
import 'package:mentorea_mobile_app/features/profile/screens/manage_notifications_screen.dart';
import 'package:mentorea_mobile_app/features/profile/screens/mentee_personal_info_screen.dart';
import 'package:mentorea_mobile_app/features/profile/screens/privacy_policy_screen.dart';
import 'package:mentorea_mobile_app/features/profile/screens/settings_screen.dart';

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
          const MenteeBottomNavigationBarScreen(),
          settings: settings,
        );

      case Routes.menteePersonalInfo:
        return smoothEaseInOutPageRoute(
          const MenteePersonalInfoScreen(),
          settings: settings,
        );

      case Routes.manageNotifications:
        return smoothEaseInOutPageRoute(
          const ManageNotificationsScreen(),
          settings: settings,
        );

      case Routes.privacyPolicy:
        return smoothEaseInOutPageRoute(
          const PrivacyPolicyScreen(),
          settings: settings,
        );

      case Routes.settingsScreen:
        return smoothEaseInOutPageRoute(
          const SettingsScreen(),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
