import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/divider_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor%20profile/sessions/available_date_list_view.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor%20profile/sessions/available_time_grid_view.dart';

class BookSessionScheduleStep extends StatelessWidget {
  const BookSessionScheduleStep({
    super.key,
  });

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
          Text('Explore Sessions', style: AppStyles.style24Meduim),
          verticalSpace(10),
          Text(
            'Find the perfect 1:1 mentorship session that aligns with your goals',
            style: AppStyles.style16Regular,
          ),
          verticalSpace(10),
          const AvailableDateListView(),
          verticalSpace(20),
          Text('Select Your Time Slot', style: AppStyles.style20Meduim),
          verticalSpace(4),
          const DividerWidget(),
          verticalSpace(10),
          const AvailableTimeGridView(),
        ],
      ),
    );
  }
}
