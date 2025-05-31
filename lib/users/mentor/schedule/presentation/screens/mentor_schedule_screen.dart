import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/widgets/availability_time_widget.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/widgets/table_calendar_widget.dart';

class MentorScheduleScreen extends StatelessWidget {
  const MentorScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 230.h, child: const TableCalendarWidget()),
        verticalSpace(20),
        AvailabilityTimeWidegt(),
      ],
    );
  }
}
