import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentor%20profile/mentor_tab_bar_overview.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentor%20profile/mentor_tab_bar_reviews.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentor%20profile/mentor_tab_bar_session.dart';

class MentorInfoTabBarWidget extends StatefulWidget {
  const MentorInfoTabBarWidget({super.key});

  @override
  State<MentorInfoTabBarWidget> createState() => _MentorInfoTabBarWidgetState();
}

class _MentorInfoTabBarWidgetState extends State<MentorInfoTabBarWidget>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: currentIndex,
      animationDuration: const Duration(milliseconds: 300),
      child: Column(
        children: [
          TabBar(
            controller: tabController,
            labelStyle: AppStyles.style20Meduim,
            labelPadding: EdgeInsets.symmetric(vertical: 20.h),
            indicatorPadding: EdgeInsets.symmetric(vertical: 10.h),
            indicatorWeight: 1,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            dividerColor: const Color(0xFF103A69),
            tabs: const [
              Text('Overview'),
              Text('Session'),
              Text('Reviews'),
            ],
          ),
          verticalSpace(20),
          Container(
            height: 400,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: TabBarView(
              controller: tabController,
              children: const [
                MentorTabBarOverview(),
                MentorTabBarSession(),
                MentorTabBarReviews(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
