import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/widgets/mentee_about_and_skills.dart';

class MenteeInfoWidget extends StatelessWidget {
  const MenteeInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      children: const [
        MenteeAboutAndSkills(),
      ],
    );
  }
}
