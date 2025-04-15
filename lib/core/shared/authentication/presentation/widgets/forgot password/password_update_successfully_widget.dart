import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
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
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        verticalSpace(16),
        Text(
          S.of(context).passwordUpdateSuccessfullyContent,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        verticalSpace(40),
        AppTextButton(
          textButton: S.of(context).backToLogin,
          onPressed: () {
            context.pop();
          },
        ),
      ],
    );
  }
}
