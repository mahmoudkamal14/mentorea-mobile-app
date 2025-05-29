import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/connection/community_connections_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/post/community_post_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/react/community_react_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/screens/mentee_community_screen.dart';
import 'package:mentorea_mobile_app/core/widgets/action_icon_appbar.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/bookings/presentation/screens/mentee_bookings_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/explore_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/screens/mentee_home_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/mentee_drawer_widget.dart';
import 'package:mentorea_mobile_app/core/shared/profile/presentation/logic/profile_cubit.dart';

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
    const MenteeCommunityScreen(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<ExploreMentorCubit>()..getAllSpecializations()),
        BlocProvider(
          create: (context) => getIt<ProfileCubit>()..getMenteeProfile(),
        ),
        BlocProvider(
          create: (context) => getIt<CommunityPostCubit>()..getAllPosts(),
        ),
        BlocProvider(create: (context) => getIt<CommunityReactCubit>()),
        BlocProvider(create: (context) => getIt<CommunityConnectionsCubit>()),
      ],
      child: Scaffold(
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
          actions: [actionAppBar(_currentIndex)],
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
              label: S.of(context).Home,
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
              label: S.of(context).Explore,
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
              label: S.of(context).Bookings,
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
              label: S.of(context).Community,
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
      ),
    );
  }

  Widget actionAppBar(currentIndex) {
    if (currentIndex == 0) {
      return ActionIconAppBar(
        onTap: () {
          context.navigateTo(Routes.notificationScreen);
        },
        image: 'assets/icons/bell-notification-social-media.svg',
      );
    } else if (currentIndex == 1) {
      return ActionIconAppBar(
        onTap: () {
          context.navigateTo(Routes.chatsScreen);
        },
        image: 'assets/icons/message_icon.svg',
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
