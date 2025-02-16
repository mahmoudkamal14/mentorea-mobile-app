import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

import 'login_with_social_item.dart';

class LoginWithGoogleAndLinkedin extends StatelessWidget {
  const LoginWithGoogleAndLinkedin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(S.of(context).or, style: Theme.of(context).textTheme.bodySmall),
        verticalSpace(24),
        LoginWithSocialItem(
          text: S.of(context).continueWithGoogle,
          iconPath: 'assets/icons/google icon.svg',
          onTap: () {},
        ),
        verticalSpace(16),
        LoginWithSocialItem(
          text: S.of(context).continueWithLinkedIn,
          iconPath: 'assets/icons/linkedin icon.svg',
          onTap: () {},
        ),
      ],
    );
  }
}
