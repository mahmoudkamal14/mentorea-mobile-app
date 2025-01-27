import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor%20profile/mentor_profile_image.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor%20profile/mentor_info_tab_bar_widget.dart';

class MentorProfileScreen extends StatelessWidget {
  const MentorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6FD),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF103A69),
        elevation: 0,
        leading: const AppbarIcon(),
        centerTitle: true,
        title: Text(
          'Mentor Profile',
          style: AppStyles.style24Bold.copyWith(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MentorProfileImage(),
              verticalSpace(20),
              const MentorInfoTabBarWidget(),
            ],
          ),
        ),
      ),
      // floatingActionButton: AppTextButton(
      //   onPressed: () {
      //     context.navigateTo(Routes.bookSessionScreen);
      //   },
      //   textButton: 'Book Session',
      //   buttonWidth: 150.w,
      // ),
    );
  }
}
