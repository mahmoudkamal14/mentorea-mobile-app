import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';

class BookSessionReviewStep extends StatelessWidget {
  const BookSessionReviewStep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 360.h,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
      margin: EdgeInsets.only(top: 48.h),
      decoration: ShapeDecoration(
        color: const Color(0xFFFFFFFE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Session date', style: AppStyles.style18MeduimBlack),
                  verticalSpace(8),
                  Text('Fri 24 June', style: AppStyles.style16Meduim),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Time', style: AppStyles.style18MeduimBlack),
                  verticalSpace(8),
                  Text('1:00 PM', style: AppStyles.style16Meduim),
                ],
              ),
            ],
          ),
          verticalSpace(16),
          Text('Topic', style: AppStyles.style18MeduimBlack),
          verticalSpace(8),
          Text(
            'Adaption for survival and evolution',
            style: AppStyles.style16Meduim,
          ),
          const Spacer(),
          AppTextButton(
            textButton: 'Edit information',
            textStyle: AppStyles.style18Meduim,
            backgroundColor: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
