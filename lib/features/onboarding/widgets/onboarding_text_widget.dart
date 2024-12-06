import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

import 'build_item_onboarding.dart';

class OnBoardingTextWidget extends StatelessWidget {
  const OnBoardingTextWidget({
    super.key,
    required this.widget,
  });

  final BuildItemOnBoarding widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          model[widget.index!].title,
          textAlign: TextAlign.center,
          style: AppStyles.style28Bold,
        ),
        verticalSpace(20),
        Text(
          model[widget.index!].textBody,
          textAlign: TextAlign.center,
          style: AppStyles.style16Regular,
        ),
      ],
    );
  }
}
