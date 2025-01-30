import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/functions/build_animation.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/app/logic/language_cubit.dart';
import 'package:mentorea_mobile_app/app/logic/language_state.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: BlocConsumer<LanguageCubit, LanguageState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/translate.gif'),
                  verticalSpace(20),
                  Text('حدد لغتك', style: AppStyles.style28Bold),
                  Text(
                    'أختر لغة واجهة منتوريا التي تفضلها وبإمكانك تعديلها لاحقاً',
                    textAlign: TextAlign.center,
                    style: AppStyles.style16Meduim,
                  ),
                  verticalSpace(30),
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
                              LanguageCubit.get(context)
                                  .selectLanguage(language: 'ar');
                              context.navigateToReplacement(
                                Routes.onboardingScreen,
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
                            backgroundColor: Colors.lightGreen,
                            onPressed: () {
                              LanguageCubit.get(context)
                                  .selectLanguage(language: 'en');
                              context.navigateToReplacement(
                                Routes.onboardingScreen,
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
          );
        },
      ),
    );
  }
}
