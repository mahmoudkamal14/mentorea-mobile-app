import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/widgets/availability_time_widget.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/widgets/mentor_availability_list_tile.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/widgets/table_calendar_widget.dart';

class MentorScheduleScreen extends StatelessWidget {
  const MentorScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: SizedBox(height: 230.h, child: const TableCalendarWidget())),
        SliverToBoxAdapter(child: verticalSpace(20)),
        SliverToBoxAdapter(child: AvailabilityTimeWidegt()),
        SliverToBoxAdapter(child: verticalSpace(20)),
        const SliverToBoxAdapter(
          child: MentorAvailabilityListTile(title: 'My Available Time Slots'),
        ),
      ],
    );
  }
}
