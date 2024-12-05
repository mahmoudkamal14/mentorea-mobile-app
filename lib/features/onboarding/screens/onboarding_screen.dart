import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/features/onboarding/models/onboard_model.dart';
import 'package:mentorea_mobile_app/features/onboarding/widgets/build_item_onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) => BuildItemOnBoarding(index: index),
      itemCount: onBoardingList.length,
      controller: onBoardingController,
    );
  }
}
