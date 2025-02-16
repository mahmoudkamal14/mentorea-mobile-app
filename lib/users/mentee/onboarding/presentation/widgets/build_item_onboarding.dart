import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/functions/build_animation.dart';
import 'package:mentorea_mobile_app/core/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/onboarding/data/datasource/onboarding_data_list.dart';
import 'package:mentorea_mobile_app/users/mentee/onboarding/data/models/onboarding_model.dart';
import 'onboarding_text_widget.dart';
import 'onborading_image_widget.dart';
import 'smooth_page_indicator_widget.dart';

class BuildItemOnBoarding extends StatefulWidget {
  const BuildItemOnBoarding({super.key, required this.index});

  final int index;

  @override
  State<BuildItemOnBoarding> createState() => _BuildItemOnBoardingState();
}

List<OnBoardingModel> model =
    isArabic() ? onBoardingArabicList : onBoardingEnglishList;

PageController onBoardingController = PageController();

class _BuildItemOnBoardingState extends State<BuildItemOnBoarding> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 6,
          child: OnBoradingImageWidget(image: model[widget.index].image),
        ),
        Expanded(
          flex: 5,
          child: animationWidget(
            delay: 500,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
              decoration: ShapeDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: Column(
                children: [
                  SmoothPageIndicatorWidget(
                    length: onBoardingArabicList.length,
                    controller: onBoardingController,
                  ),
                  verticalSpace(45),
                  Expanded(child: OnBoardingTextWidget(widget: widget)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      widget.index != 2
                          ? Expanded(
                              child: AppTextButton(
                                textButton: S.of(context).skip,
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: Theme.of(context).hintColor,
                                    ),
                                backgroundColor:
                                    Theme.of(context).scaffoldBackgroundColor,
                                onPressed: () {
                                  context.navigateToReplacement(
                                      Routes.userTypeScreen);
                                },
                              ),
                            )
                          : const SizedBox(),
                      widget.index != 2
                          ? horizontalSpace(20)
                          : const SizedBox(),
                      Expanded(
                        child: AppTextButton(
                          textButton: model[widget.index].textButton,
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
    );
  }

  void onDotClicked(BuildContext context) {
    if (widget.index != 2) {
      setState(() {
        onBoardingController.animateToPage(
          widget.index + 1,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      });
    } else {
      context.navigateToReplacement(Routes.userTypeScreen);
    }
  }
}
