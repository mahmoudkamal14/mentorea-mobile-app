import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/features/onboarding/widgets/onboard_smooth_indicator.dart';
import 'package:mentorea_mobile_app/features/onboarding/widgets/onboard_subtitle.dart';
import 'package:mentorea_mobile_app/features/onboarding/widgets/onboard_title.dart';
import 'package:mentorea_mobile_app/features/onboarding/widgets/onborad_image.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/custom_button.dart';
import '../models/onboard_model.dart';

class OnboardItemWidget extends StatelessWidget {
  OnboardItemWidget(
      {super.key,
      required this.onboardItemModel,
      required this.nextPage,
      required this.index});

  @override
  OnboardItemModel onboardItemModel;
  PageController nextPage;
  int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 60.h),
          child: Center(child: OnboradImage(image: onboardItemModel.image)),
        ),
        verticalSpace(30),
        Center(child: OnboardTitle(title: onboardItemModel.title)),
        Padding(
          padding: EdgeInsets.all(15.h),
          child: Center(
              child: OnboardSubtitle(subTitle: onboardItemModel.subtitle)),
        ),
        verticalSpace(40),
        CustomButton(
            text: onboardItemModel.buttonText,
            color: const Color(0xffFF6C37), //EB4314
            width: 114.w,
            height: 54.h,
            textColor: Colors.white,
            onTap: () {
              index == 2
                  ? (context.navigateToReplacement(Routes.loginScreen))
                  : nextPage.animateToPage(index + 1,
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.elasticOut);
            }),
        verticalSpace(40),
        OnboardSmoothIndicator(index: index)
      ],
    );
  }
}
