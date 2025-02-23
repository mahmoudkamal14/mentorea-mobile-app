import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/functions/build_page_route.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/users/mentee/auth/presentation/logic/register%20cubit/mentee_register_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/auth/presentation/screens/mentee_login_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/auth/presentation/screens/mentee_register_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/book_session_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/chats_details_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/chats_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/screens/mentee_bottom_navigation_bar_screen.dart';
import 'package:mentorea_mobile_app/core/shared/onboarding/presentation/screens/language_screen.dart';
import 'package:mentorea_mobile_app/core/shared/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:mentorea_mobile_app/core/shared/onboarding/presentation/screens/splash_screen.dart';
import 'package:mentorea_mobile_app/core/shared/onboarding/presentation/screens/user_type_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/screens/notifications_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/screens/mentee_personal_info_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/screens/payment_methods_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/screens/privacy_policy_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/screens/settings_screen.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/logic/register%20cubit/mentor_register_cubit.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/screen/mentor_login_screen.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/screen/mentor_register_screen.dart';
import 'package:mentorea_mobile_app/users/mentor/home/presentation/screens/mentor_bottom_navigation_bar_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final String routeName = settings.name!;

    switch (routeName) {
      // App
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

      case Routes.userTypeScreen:
        return smoothEaseInOutPageRoute(
          const UserTypeScreen(),
          settings: settings,
        );

      case Routes.chatsScreen:
        return smoothEaseInOutPageRoute(
          const ChatsScreen(),
          settings: settings,
        );

      case Routes.chatsDetailsScreen:
        return smoothEaseInOutPageRoute(
          const ChatsDetailsScreen(),
          settings: settings,
        );

      // Mentee Account
      case Routes.menteeLoginScreen:
        return smoothEaseInOutPageRoute(
          const MenteeLoginScreen(),
          settings: settings,
        );

      case Routes.menteeRegisterScreen:
        return smoothEaseInOutPageRoute(
          BlocProvider(
            create: (context) => MenteeRegisterCubit(),
            child: const MenteeRegisterScreen(),
          ),
          settings: settings,
        );

      case Routes.menteeBottomNavBar:
        return smoothEaseInOutPageRoute(
          const MenteeBottomNavigationBarScreen(),
          settings: settings,
        );

      case Routes.menteePersonalInfo:
        return smoothEaseInOutPageRoute(
          const MenteePersonalInfoScreen(),
          settings: settings,
        );

      case Routes.notificationScreen:
        return smoothEaseInOutPageRoute(
          const NotificationsScreen(),
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

      // case Routes.mentorProfileScreen:
      //   return smoothEaseInOutPageRoute(
      //     const MentorProfileScreen(),
      //     settings: settings,
      //   );

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

      // Mentor Account
      case Routes.mentorLoginScreen:
        return smoothEaseInOutPageRoute(
          const MentorLoginScreen(),
          settings: settings,
        );

      case Routes.mentorRegisterScreen:
        return smoothEaseInOutPageRoute(
          BlocProvider(
            create: (context) => MentorRegisterCubit(),
            child: const MentorRegisterScreen(),
          ),
          settings: settings,
        );

      case Routes.mentorBottomNavBar:
        return smoothEaseInOutPageRoute(
          const MentorBottomNavigationBarScreen(),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
