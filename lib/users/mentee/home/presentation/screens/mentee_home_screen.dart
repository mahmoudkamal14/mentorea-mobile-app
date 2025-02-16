import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/find_the_right_mentor_message.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/recommended_mentor_list_view.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/top_mentors_list_view.dart';

class MenteeHomeScreen extends StatelessWidget {
  const MenteeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24.h,
        children: [
          AppTextFormField(
            textInputType: TextInputType.text,
            hintText: S.current.searchForYourMentor,
            validator: (p0) {},
          ),
          const FindTheRightMentorMessage(),
          const RecommendedMentorListView(),
          const TopMentorsListView(),
        ],
      ),
    );
  }
}
