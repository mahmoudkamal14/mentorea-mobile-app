import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/features/home/presentation/widget/find_the_right_mentor_message.dart';
import 'package:mentorea_mobile_app/features/home/presentation/widget/top_mentors_list_view.dart';

class MenteeHomeScreen extends StatelessWidget {
  const MenteeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24.h,
        children: const [
          FindTheRightMentorMessage(),
          TopMentorsListView(),
        ],
      ),
    );
  }
}
