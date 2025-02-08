import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/divider_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor%20profile/sessions/available_date_list_view.dart';

import 'sessions/available_time_grid_view.dart';

class MentorAvailableSessionsWidget extends StatelessWidget {
  const MentorAvailableSessionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Available sessions',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          verticalSpace(10),
          Text(
            'Book 1:1 sessions from the options based on your needs',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          verticalSpace(10),
          const AvailableDateListView(),
          verticalSpace(20),
          Text(
            'Available time slots',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          verticalSpace(4),
          const DividerWidget(),
          verticalSpace(10),
          const AvailableTimeGridView(),
          verticalSpace(30),
          AppTextButton(
            textButton: 'Book Session',
            onPressed: () {
              context.navigateTo(Routes.bookSessionScreen);
            },
          ),
        ],
      ),
    );
  }
}
