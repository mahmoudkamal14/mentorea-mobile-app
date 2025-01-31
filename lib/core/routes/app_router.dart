import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/functions/build_page_route.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/users/mentee/auth/presentation/screens/mentee_login_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/auth/presentation/screens/mentee_register_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/book_session_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/mentor_profile_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/home/mentee_bottom_navigation_bar_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/onboarding/presentation/screens/language_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/onboarding/presentation/screens/splash_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/screens/manage_notifications_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/screens/mentee_personal_info_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/screens/payment_methods_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/screens/privacy_policy_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/screens/settings_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final String routeName = settings.name!;

    switch (routeName) {
      case Routes.splashScreen:
        return smoothEaseInOutPageRoute(
          const SplashScreen(),
          settings: settings,
        );

      case Routes.languageScreen:
        return smoothEaseInOutPageRoute(
          const LanguageScreen(),
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

      case Routes.mentorProfileScreen:
        return smoothEaseInOutPageRoute(
          const MentorProfileScreen(),
          settings: settings,
        );

      case Routes.bookSessionScreen:
        return smoothEaseInOutPageRoute(
          const BookSessionScreen(),
          settings: settings,
        );

      case Routes.paymentMethodsScreen:
        return smoothEaseInOutPageRoute(
          const PaymentMethodsScreen(),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
