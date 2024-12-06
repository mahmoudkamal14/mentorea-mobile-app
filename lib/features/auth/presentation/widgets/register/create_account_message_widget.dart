import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class CreateAccountMessageWidget extends StatelessWidget {
  const CreateAccountMessageWidget({
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
              'Create an account',
              textAlign: TextAlign.center,
              style: AppStyles.style28Bold,
            ),
          ],
        ),
        verticalSpace(8),
        Text(
          'Start your journey with Mentorea and connect with expert mentors today',
          style: AppStyles.style16Meduim,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
