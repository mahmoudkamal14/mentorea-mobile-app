import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/users/mentee/onboarding/data/datasource/onboarding_data_list.dart';
import 'package:mentorea_mobile_app/users/mentee/onboarding/presentation/widgets/build_item_onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) => BuildItemOnBoarding(index: index),
      itemCount: onBoardingArabicList.length,
      controller: onBoardingController,
    );
  }
}
