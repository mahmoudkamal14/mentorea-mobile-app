import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/datasource/local/mentors_data.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor%20profile/overview/mentor_tab_bar_overview.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor%20profile/reviews/mentor_tab_bar_reviews.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor%20profile/sessions/mentor_tab_bar_session.dart';

class MentorInfoTabBarWidget extends StatefulWidget {
  const MentorInfoTabBarWidget({
    super.key,
    required this.mentor,
  });

  final MentorInfo mentor;

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
            labelStyle: Theme.of(context).textTheme.bodyMedium,
            unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
            labelPadding: EdgeInsets.symmetric(vertical: 20.h),
            indicatorPadding: EdgeInsets.symmetric(vertical: 10.h),
            indicatorWeight: 1,
            indicatorColor: Theme.of(context).dividerTheme.color,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Text('Overview'),
              Text('Sessions'),
              Text('Reviews'),
            ],
          ),
          verticalSpace(20),
          Container(
            height: 450.h,
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
