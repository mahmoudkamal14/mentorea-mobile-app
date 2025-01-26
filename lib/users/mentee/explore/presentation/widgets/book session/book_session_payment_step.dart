import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class BookSessionPaymentStep extends StatelessWidget {
  const BookSessionPaymentStep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 48.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/undraw_booked_re_vtod.svg'),
          verticalSpace(24),
          Text(
            'Session schedule successful',
            textAlign: TextAlign.center,
            style: AppStyles.style24Meduim,
          ),
          verticalSpace(8),
          Text(
            'Your session has been confirmed by the tutor, you have to make payment to confirm the session for you, you can reschedule or cancel 24hrs before the session',
            textAlign: TextAlign.center,
            style: AppStyles.style16Meduim,
          ),
        ],
      ),
    );
  }
}
