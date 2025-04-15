import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/datasource/local/mentors_data.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor%20profile/mentor_profile_image.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor%20profile/mentor_info_tab_bar_widget.dart';

class MentorProfileScreen extends StatelessWidget {
  const MentorProfileScreen({super.key, required this.mentor});

  final MentorInfo mentor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        leading: const AppbarIcon(),
        centerTitle: true,
        title: Text(
          'Mentor Profile',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: MentorProfileImage(mentor: mentor)),
            SliverToBoxAdapter(child: verticalSpace(20)),
            SliverToBoxAdapter(child: MentorInfoTabBarWidget(mentor: mentor)),
          ],
        ),
      ),
    );
  }
}
