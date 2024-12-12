import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class PasswordUpdateSuccessfullyWidget extends StatelessWidget {
  const PasswordUpdateSuccessfullyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 80.r,
          backgroundColor: const Color(0xFFEDEDED),
          child: CircleAvatar(
            radius: 60.r,
            backgroundColor: const Color(0xFF34A853),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 80,
            ),
          ),
        ),
        verticalSpace(20),
        Text(
          S.of(context).passwordUpdateSuccessfullyTitle,
          style: AppStyles.style28Bold,
          textAlign: TextAlign.center,
        ),
        verticalSpace(16),
        Text(
          S.of(context).passwordUpdateSuccessfullyContent,
          style: AppStyles.style16Regular,
          textAlign: TextAlign.center,
        ),
        verticalSpace(40),
        AppTextButton(
          textButton: S.of(context).backToLogin,
          textStyle: AppStyles.style20Meduim.copyWith(color: Colors.white),
          onPressed: () {
            context.pop();
          },
        ),
      ],
    );
  }
}
