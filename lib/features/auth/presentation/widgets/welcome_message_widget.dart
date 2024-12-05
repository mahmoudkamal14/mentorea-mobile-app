import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class WelcomeMessageWidget extends StatelessWidget {
  const WelcomeMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome back',
              textAlign: TextAlign.center,
              style: AppStyles.style20Meduim,
            ),
          ],
        ),
        verticalSpace(8),
        Text(
          'Enter the required details to access your account and find the right mentor for you',
          style: AppStyles.style16Meduim,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
