import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class MentorCardListViewItem extends StatelessWidget {
  const MentorCardListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigateTo(Routes.mentorProfileScreen);
      },
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/fawzy.png',
                fit: BoxFit.fill,
                height: 200.h,
                width: double.infinity,
              ),
              verticalSpace(10),
              Text('Mahmoud Fawzy', style: AppStyles.style24Meduim),
              verticalSpace(4),
              Text(
                'Senior Back-End Developer at Google',
                style: AppStyles.style16Regular,
              ),
              verticalSpace(12),
              Row(
                children: [
                  const Icon(Icons.work_outline_sharp),
                  horizontalSpace(16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Experience', style: AppStyles.style20Meduim),
                      verticalSpace(4),
                      Text('5 Years', style: AppStyles.style16Regular),
                    ],
                  ),
                ],
              ),
              verticalSpace(12),
              Row(
                children: [
                  const Icon(Icons.group_outlined),
                  horizontalSpace(16),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '14 Sessions  ',
                          style: AppStyles.style20Meduim,
                        ),
                        TextSpan(
                          text: '(11 Reviews)',
                          style: AppStyles.style16Regular,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
