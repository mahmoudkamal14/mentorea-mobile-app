import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/theme/app_colors.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/bookings/mentee_bookings_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/community/presentation/screens/community_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/explore_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/screens/mentee_home_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/mentee_drawer_widget.dart';

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
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Text(S.of(context).Mentorea, style: AppStyles.style24Bold),
        centerTitle: true,
        actions: [
          _currentIndex == 0
              ? Padding(
                  padding: EdgeInsets.only(
                    right: isArabic() == false ? 10.h : 0,
                    left: isArabic() == true ? 10.h : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child:
                        const Icon(Icons.notifications_none_outlined, size: 30),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
      drawer: const MenteeDrawerWidget(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
          child: screens[_currentIndex],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 74.h,
        animationDuration: const Duration(milliseconds: 900),
        backgroundColor: Colors.white,
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
