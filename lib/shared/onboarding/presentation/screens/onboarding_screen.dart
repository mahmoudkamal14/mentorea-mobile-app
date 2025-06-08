import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/shared/onboarding/data/datasource/onboarding_data_list.dart';
import 'package:mentorea_mobile_app/shared/onboarding/presentation/widgets/build_item_onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: PageView.builder(
        itemBuilder: (context, index) => BuildItemOnBoarding(index: index),
        itemCount: onBoardingArabicList.length,
        controller: onBoardingController,
      ),
    );
  }
}
