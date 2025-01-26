import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

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
              S.of(context).createAccountMessage,
              textAlign: TextAlign.center,
              style: AppStyles.style28Bold,
            ),
          ],
        ),
        verticalSpace(8),
        Text(
          S.of(context).createAccountMessageContent,
          style: AppStyles.style16Meduim,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
