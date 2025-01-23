import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentor%20profile/review_list_view_widget.dart';

class MentorTabBarReviews extends StatelessWidget {
  const MentorTabBarReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Real experiences with mentor', style: AppStyles.style24Meduim),
        verticalSpace(20),
        const ReviewListViewWidget(),
      ],
    );
  }
}
