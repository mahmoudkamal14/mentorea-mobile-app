import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentor_response_model.dart';

class CommunityStatisticsWidget extends StatelessWidget {
  const CommunityStatisticsWidget({super.key, required this.mentor});

  final MentorResponseModel mentor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Community statistics',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        verticalSpace(20),
        SizedBox(
          height: 70.h,
          child: ListTile(
            leading: Container(
              height: 60.h,
              width: 60.w,
              decoration: const BoxDecoration(
                color: Color(0xFFE6F4F9),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Icon(
                Icons.rocket_launch_outlined,
                size: 30,
                color: Color(0xFF17C2FF),
              ),
            ),
            title: Text(
              '${(mentor.numberOfSession! * 45)} mins',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            subtitle: Text(
              'Total mentoring time',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),
        SizedBox(
          height: 70.h,
          child: ListTile(
            leading: Container(
              height: 60.h,
              width: 60.w,
              decoration: const BoxDecoration(
                color: Color(0xFFFFEEEF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Icon(
                Icons.auto_awesome,
                size: 30,
                color: Color(0xFFF4565B),
              ),
            ),
            title: Text(
              '${mentor.numberOfSession} Sessions',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            subtitle: Text(
              'Sessions completed',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),
      ],
    );
  }
}
