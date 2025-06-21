import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/build_page_route.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/shared/authentication/presentation/screens/forgot_password_screen.dart';
import 'package:mentorea_mobile_app/shared/authentication/presentation/screens/mentee_register_screen.dart';
import 'package:mentorea_mobile_app/shared/community/presentation/screens/create_post_screen.dart';
import 'package:mentorea_mobile_app/shared/settings/presentation/screens/change_password_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/chats_details_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/chats_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/mentors_search_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/screens/mentee_bottom_navigation_bar_screen.dart';
import 'package:mentorea_mobile_app/shared/onboarding/presentation/screens/language_screen.dart';
import 'package:mentorea_mobile_app/shared/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:mentorea_mobile_app/shared/onboarding/presentation/screens/splash_screen.dart';
import 'package:mentorea_mobile_app/shared/onboarding/presentation/screens/user_type_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/screens/notifications_screen.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/screens/edit_mentee_profile_screen.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/screens/mentee_personal_info_screen.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/screens/payment_methods_screen.dart';
import 'package:mentorea_mobile_app/shared/settings/presentation/screens/privacy_policy_screen.dart';
import 'package:mentorea_mobile_app/shared/settings/presentation/screens/mentee_settings_screen.dart';
import 'package:mentorea_mobile_app/shared/authentication/presentation/screens/mentor_register_screen.dart';
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

      case Routes.forgotPasswordScreen:
        return smoothEaseInOutPageRoute(
          const ForgotPasswordScreen(),
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

      case Routes.menteeRegisterScreen:
        return smoothEaseInOutPageRoute(
          const MenteeRegisterScreen(),
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

      case Routes.menteeSettingsScreen:
        return smoothEaseInOutPageRoute(
          const MenteeSettingsScreen(),
          settings: settings,
        );

      // case Routes.mentorSettingsScreen:
      //   return smoothEaseInOutPageRoute(
      //     const MentorSettingsScreen(),
      //     settings: settings,
      //   );

      case Routes.changePasswordScreen:
        return smoothEaseInOutPageRoute(
          const ChangePasswordScreen(),
          settings: settings,
        );

      case Routes.editMenteeProfileScreen:
        return smoothEaseInOutPageRoute(
          const EditMenteeProfileScreen(),
          settings: settings,
        );

      // case Routes.editMentorProfileScreen:
      //   return smoothEaseInOutPageRoute(
      //     const EditMentorProfileScreen(),
      //     settings: settings,
      //   );

      // case Routes.mentorProfileScreen:
      //   return smoothEaseInOutPageRoute(
      //     const MentorProfileScreen(),
      //     settings: settings,
      //   );

      // case Routes.bookSessionScreen:
      //   return smoothEaseInOutPageRoute(
      //     const BookSessionScreen(),
      //     settings: settings,
      //   );

      case Routes.paymentMethodsScreen:
        return smoothEaseInOutPageRoute(
          const PaymentMethodsScreen(),
          settings: settings,
        );

      case Routes.mentorsSearchScreen:
        return smoothEaseInOutPageRoute(
          const MentorsSearchScreen(),
          settings: settings,
        );

      case Routes.mentorRegisterScreen:
        return smoothEaseInOutPageRoute(
          const MentorRegisterScreen(),
          settings: settings,
        );

      case Routes.mentorBottomNavBar:
        return smoothEaseInOutPageRoute(
          const MentorBottomNavigationBarScreen(),
          settings: settings,
        );

      case Routes.createNewPostScreen:
        return smoothEaseInOutPageRoute(
          const CreatePostScreen(),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
