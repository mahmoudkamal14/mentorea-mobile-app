import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/mentee_about_and_skills.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/mentee_education_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/user_activity_widget.dart';

class MenteeInfoWidget extends StatelessWidget {
  const MenteeInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        spacing: 16.h,
        children: const [
          MenteeAboutAndSkills(),
          MenteeEducationWidget(),
          UserActivityWidget(),
        ],
      ),
    );
  }
}
