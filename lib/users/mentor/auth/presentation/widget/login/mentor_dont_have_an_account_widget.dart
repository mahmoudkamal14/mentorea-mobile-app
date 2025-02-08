import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class MentorDontHaveAnAccountWidget extends StatelessWidget {
  const MentorDontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigateToReplacement(Routes.menteeRegisterScreen);
      },
      child: Text(
        S.of(context).IDontHaveAnAccount,
        textAlign: TextAlign.center,
        style: AppStyles.style18Meduim,
      ),
    );
  }
}
