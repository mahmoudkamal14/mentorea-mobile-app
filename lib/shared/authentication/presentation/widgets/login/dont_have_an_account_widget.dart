import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/shared/onboarding/data/models/user_type_model.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key, required this.userType});

  final UserType userType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (userType == UserType.mentee) {
          context.navigateTo(Routes.menteeRegisterScreen);
        } else if (userType == UserType.mentor) {
          context.navigateTo(Routes.mentorRegisterScreen);
        }
      },
      child: Text(
        S.of(context).IDontHaveAnAccount,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
