import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';

import 'build_item_onboarding.dart';

class OnBoardingTextWidget extends StatelessWidget {
  const OnBoardingTextWidget({super.key, required this.widget});

  final BuildItemOnBoarding widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          model[widget.index].title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        verticalSpace(20),
        Text(
          model[widget.index].textBody,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
