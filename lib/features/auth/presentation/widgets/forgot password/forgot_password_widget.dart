import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

import 'forgot_password_form_widget.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          forgotPasswordBottomSheet(context);
        },
        child: Text('Forgot password?', style: AppStyles.style18Meduim),
      ),
    );
  }

  PersistentBottomSheetController forgotPasswordBottomSheet(
      BuildContext context) {
    return showBottomSheet(
      context: context,
      clipBehavior: Clip.antiAlias,
      sheetAnimationStyle: AnimationStyle(
        curve: Curves.slowMiddle,
        duration: const Duration(milliseconds: 1200),
      ),
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 380.h,
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          child: Column(
            children: [
              Text('Forgot Password', style: AppStyles.style28Bold),
              verticalSpace(16),
              Text(
                'Enter your email to receive a one-time password (OTP) for resetting your password.',
                style: AppStyles.style16Regular,
                textAlign: TextAlign.center,
              ),
              verticalSpace(30),
              const ForgorPasswordFormWidget(),
            ],
          ),
        );
      },
    );
  }
}
