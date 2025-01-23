import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class CommunityStatisticsWidget extends StatelessWidget {
  const CommunityStatisticsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Community statistics', style: AppStyles.style24Bold),
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
              '420 mins',
              style: AppStyles.style24Meduim,
            ),
            subtitle: Text(
              'Total mentoring time',
              style: AppStyles.style16Regular,
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
              '14 Sessions',
              style: AppStyles.style24Meduim,
            ),
            subtitle: Text(
              'Sessions completed',
              style: AppStyles.style16Regular,
            ),
          ),
        ),
      ],
    );
  }
}
