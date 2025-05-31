import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/connection/community_connections_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/post/community_post_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/react/community_react_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/screens/mentor_community_screen.dart';
import 'package:mentorea_mobile_app/core/shared/profile/presentation/logic/profile_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/profile/presentation/logic/profile_state.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/bookings/presentation/screens/mentee_bookings_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/mentee_drawer_widget.dart';
import 'package:mentorea_mobile_app/users/mentor/dashboard/presentation/screen/mentor_dashboard_screen.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/logic/schedule_cubit.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/screens/mentor_schedule_screen.dart';

class MentorBottomNavigationBarScreen extends StatefulWidget {
  const MentorBottomNavigationBarScreen({super.key});

  @override
  State<MentorBottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState
    extends State<MentorBottomNavigationBarScreen> {
  final List<Widget> screens = [
    const MentorScheduleScreen(),
    const MentorDashboardScreen(),
    const MenteeBookingsScreen(),
    const MentorCommunityScreen(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProfileCubit>()..getMentorProfile(),
        ),
        BlocProvider(
          create: (context) => getIt<ScheduleCubit>()
            ..getMentorAvailability(mentorId: getCachedUserData()!.id),
        ),
        BlocProvider(
          create: (context) => getIt<CommunityPostCubit>()..getAllPosts(),
        ),
        BlocProvider(create: (context) => getIt<CommunityReactCubit>()),
        BlocProvider(create: (context) => getIt<CommunityConnectionsCubit>()),
      ],
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
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
                          onTap: () {
                            context.navigateTo(Routes.notificationScreen);
                          },
                          child: SvgPicture.asset(
                              'assets/icons/bell-notification-social-media.svg'),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
            drawer: const MenteeDrawerWidget(),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
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
                    Icons.calendar_today_outlined,
                    size: 30,
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .selectedIconTheme
                        ?.color,
                  ),
                  label: 'Schedule',
                  labelStyle: Theme.of(context)
                      .bottomNavigationBarTheme
                      .selectedLabelStyle,
                ),
                CurvedNavigationBarItem(
                  child: Icon(
                    Icons.leaderboard,
                    size: 30,
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .selectedIconTheme
                        ?.color,
                  ),
                  label: S.of(context).dashboard,
                  labelStyle: Theme.of(context)
                      .bottomNavigationBarTheme
                      .selectedLabelStyle,
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
                  labelStyle: Theme.of(context)
                      .bottomNavigationBarTheme
                      .selectedLabelStyle,
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
                  labelStyle: Theme.of(context)
                      .bottomNavigationBarTheme
                      .selectedLabelStyle,
                ),
              ],
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
