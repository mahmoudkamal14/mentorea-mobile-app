import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

import 'login_with_social_item.dart';

class LoginWithGoogleAndLinkedin extends StatelessWidget {
  const LoginWithGoogleAndLinkedin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('OR', style: AppStyles.style16Meduim),
        verticalSpace(24),
        LoginWithSocialItem(
          text: 'Continue with Google',
          iconPath: 'assets/icons/google icon.svg',
          onTap: () {},
        ),
        verticalSpace(16),
        LoginWithSocialItem(
          text: 'Continue with LinkedIn',
          iconPath: 'assets/icons/linkedin icon.svg',
          onTap: () {},
        ),
      ],
    );
  }
}
