import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/theme/app_colors.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/features/bookings/mentee_bookings_screen.dart';
import 'package:mentorea_mobile_app/features/community/community_screen.dart';
import 'package:mentorea_mobile_app/features/explore/explore_screen.dart';
import 'package:mentorea_mobile_app/features/home/presentation/screens/mentee_home_screen.dart';
import 'package:mentorea_mobile_app/features/profile/screens/mentee_profile_screen.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class MenteeBottomNavigationBarScreen extends StatefulWidget {
  const MenteeBottomNavigationBarScreen({super.key});

  @override
  State<MenteeBottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState
    extends State<MenteeBottomNavigationBarScreen> {
  final List<Widget> screens = [
    const MenteeHomeScreen(),
    const ExploreScreen(),
    const MenteeBookingsScreen(),
    const CommunityScreen(),
    const MenteeProfileScreen(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6FD),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
          child: screens[_currentIndex],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 74.h,
        backgroundColor: const Color(0xFFF9F6FD),
        buttonBackgroundColor: const Color(0xFF103A69),
        color: const Color(0xFF103A69),
        index: _currentIndex,
        items: [
          CurvedNavigationBarItem(
            child: const Icon(Icons.home_outlined, color: Colors.white),
            label: S.of(context).Home,
            labelStyle: AppStyles.style14RegularWhite,
          ),
          CurvedNavigationBarItem(
            child: const Icon(Icons.explore_outlined, color: AppColors.white),
            label: S.of(context).Explore,
            labelStyle: AppStyles.style14RegularWhite,
          ),
          CurvedNavigationBarItem(
            child: const Icon(Icons.access_time, color: AppColors.white),
            label: S.of(context).Bookings,
            labelStyle: AppStyles.style14RegularWhite,
          ),
          CurvedNavigationBarItem(
            child: const Icon(Icons.people_alt_outlined, color: Colors.white),
            label: S.of(context).Community,
            labelStyle: AppStyles.style14RegularWhite,
          ),
          CurvedNavigationBarItem(
            child: const Icon(Icons.perm_identity, color: Colors.white),
            label: S.of(context).Profile,
            labelStyle: AppStyles.style14RegularWhite,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
