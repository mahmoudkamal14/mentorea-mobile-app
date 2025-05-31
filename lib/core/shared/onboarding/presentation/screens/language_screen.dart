import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/helper/functions/build_animation.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/app/logic/app_cubit.dart';
import 'package:mentorea_mobile_app/app/logic/app_state.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/images/Globalization-pana.svg'),
                  Text(
                    'حدد لغتك',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  verticalSpace(20),
                  Text(
                    'أختر لغة واجهة منتوريا التي تفضلها وبإمكانك تعديلها لاحقاً',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  verticalSpace(20),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      children: [
                        animationText(
                          index: 0,
                          delay: 400,
                          child: AppTextButton(
                            textButton: 'العربية',
                            onPressed: () {
                              AppCubit.get(context)
                                  .selectLanguage(LanguageState.arabic);
                              context.navigateToReplacement(
                                Routes.onboardingScreen,
                              );
                              CacheHelper.saveData(
                                key: CacheHelperKeys.languageScreen,
                                value: true,
                              );
                            },
                          ),
                        ),
                        verticalSpace(20),
                        animationText(
                          index: 1,
                          delay: 400,
                          child: AppTextButton(
                            textButton: 'English',
                            backgroundColor: Colors.deepOrangeAccent,
                            onPressed: () {
                              AppCubit.get(context)
                                  .selectLanguage(LanguageState.english);
                              context.navigateToReplacement(
                                Routes.onboardingScreen,
                              );
                              CacheHelper.saveData(
                                key: CacheHelperKeys.languageScreen,
                                value: true,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
