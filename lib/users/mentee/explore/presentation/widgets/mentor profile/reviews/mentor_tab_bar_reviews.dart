import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor%20profile/reviews/review_list_view_widget.dart';

class MentorTabBarReviews extends StatelessWidget {
  const MentorTabBarReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Real experiences with mentor',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        verticalSpace(20),
        const ReviewListViewWidget(),
      ],
    );
  }
}
