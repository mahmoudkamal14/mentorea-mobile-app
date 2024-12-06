// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/functions/build_animation.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/features/onboarding/models/onboard_model.dart';
import 'onboarding_text_widget.dart';
import 'onborading_image_widget.dart';
import 'smooth_page_indicator_widget.dart';

class BuildItemOnBoarding extends StatefulWidget {
  BuildItemOnBoarding({super.key, this.index});

  int? index;

  @override
  State<BuildItemOnBoarding> createState() => _BuildItemOnBoardingState();
}

List<OnBoardingModel> model = onBoardingList;

PageController onBoardingController = PageController();

class _BuildItemOnBoardingState extends State<BuildItemOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: OnBoradingImageWidget(image: model[widget.index!].image),
          ),
          Expanded(
            flex: 5,
            child: animationWidget(
              delay: 500,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: Column(
                  children: [
                    SmoothPageIndicatorWidget(
                      length: onBoardingList.length,
                      controller: onBoardingController,
                    ),
                    verticalSpace(45),
                    Expanded(child: OnBoardingTextWidget(widget: widget)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        widget.index! != 2
                            ? Expanded(
                                child: AppTextButton(
                                  textButton: 'Skip',
                                  backgroundColor: const Color(0xFFFAFAFB),
                                  textStyle: AppStyles.style18Meduim
                                      .copyWith(color: Colors.black),
                                  onPressed: () {
                                    context.navigateToReplacement(
                                        Routes.loginScreen);
                                  },
                                ),
                              )
                            : const SizedBox(),
                        widget.index! != 2
                            ? horizontalSpace(20)
                            : const SizedBox(),
                        Expanded(
                          child: AppTextButton(
                            textButton: model[widget.index!].textButton,
                            textStyle: AppStyles.style18Meduim
                                .copyWith(color: Colors.white),
                            onPressed: () {
                              onDotClicked(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onDotClicked(BuildContext context) {
    if (widget.index! != 2) {
      setState(() {
        onBoardingController.animateToPage(
          widget.index! + 1,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      });
    } else {
      context.navigateToReplacement(Routes.loginScreen);
    }
  }
}
