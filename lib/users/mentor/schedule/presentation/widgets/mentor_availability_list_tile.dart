import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/logic/schedule_cubit.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/logic/schedule_state.dart';

class MentorAvailabilityListTile extends StatelessWidget {
  const MentorAvailabilityListTile({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleCubit, ScheduleState>(
      builder: (context, state) {
        var availabilityList =
            ScheduleCubit.get(context).mentorAvailabilityList;
        return ContainerCardWidget(
          child: ExpansionTile(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            iconColor: Theme.of(context).iconTheme.color,
            childrenPadding: EdgeInsets.only(bottom: 8.h),
            tilePadding: EdgeInsets.only(bottom: 8.h),
            children: availabilityList.map((slot) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: ContainerCardWidget(
                  child: ListTile(
                    leading: Icon(
                      Icons.access_time,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date: ${slot.date}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        verticalSpace(8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Start: ${slot.startTime}',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            Text(
                              'End: ${slot.endTime}',
                              style: Theme.of(context).textTheme.titleSmall,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
