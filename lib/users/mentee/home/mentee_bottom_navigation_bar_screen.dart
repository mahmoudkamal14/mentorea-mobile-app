import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/functions/is_arabic.dart';
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        actionsIconTheme: Theme.of(context).appBarTheme.actionsIconTheme,
        elevation: 0.0,
        title: Text(
          S.of(context).Mentorea,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        buttonBackgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        color: Theme.of(context).hoverColor,
        index: _currentIndex,
        items: [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home_outlined,
              size: 30,
              color: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.color,
            ),
            label: _currentIndex == 0 ? null : S.of(context).Home,
            labelStyle:
                Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.explore_outlined,
              size: 30,
              color: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.color,
            ),
            label: _currentIndex == 1 ? null : S.of(context).Explore,
            labelStyle:
                Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.access_time,
              size: 30,
              color: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.color,
            ),
            label: _currentIndex == 2 ? null : S.of(context).Bookings,
            labelStyle:
                Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.people_alt_outlined,
              size: 30,
              color: Theme.of(context)
                  .bottomNavigationBarTheme
                  .selectedIconTheme
                  ?.color,
            ),
            label: _currentIndex == 3 ? null : S.of(context).Community,
            labelStyle:
                Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
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
