import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentor%20profile/sessions/community_statistics_widget.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentor%20profile/mentor_available_sessions_widget.dart';

class MentorTabBarSession extends StatelessWidget {
  const MentorTabBarSession({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CommunityStatisticsWidget(),
          verticalSpace(30),
          const MentorAvailableSessionsWidget(),
        ],
      ),
    );
  }
}
