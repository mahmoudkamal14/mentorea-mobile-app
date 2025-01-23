import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/divider_widget.dart';

class MentorAvailableSessionsWidget extends StatelessWidget {
  const MentorAvailableSessionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Available sessions', style: AppStyles.style24Meduim),
          verticalSpace(4),
          Text(
            'Book 1:1 sessions from the options based on your needs',
            style: AppStyles.style16Regular,
          ),
          verticalSpace(10),
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            decoration: BoxDecoration(border: Border.all(width: 0.5)),
            child: Center(
              child: Text(
                '10 Jan',
                style: AppStyles.style24Meduim,
              ),
            ),
          ),
          verticalSpace(10),
          Text('Available time slots', style: AppStyles.style18MeduimBlack),
          verticalSpace(10),
          const DividerWidget(),
          verticalSpace(10),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                  decoration: BoxDecoration(border: Border.all(width: 0.5)),
                  child: Center(
                      child: Text('10:30 PM', style: AppStyles.style24Meduim)),
                ),
              ),
              horizontalSpace(10),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                  decoration: BoxDecoration(border: Border.all(width: 0.5)),
                  child: Center(
                      child: Text('10:30 PM', style: AppStyles.style24Meduim)),
                ),
              ),
            ],
          ),
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
