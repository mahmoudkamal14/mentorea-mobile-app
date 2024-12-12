import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/features/auth/presentation/widgets/register/personal_information_step.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

import 'career_information_step.dart';
import 'email_and_password_step.dart';

class MenteeRegisterSteperWidget extends StatefulWidget {
  const MenteeRegisterSteperWidget({super.key});

  @override
  State<MenteeRegisterSteperWidget> createState() =>
      _MenteeRegisterSteperWidgetState();
}

class _MenteeRegisterSteperWidgetState
    extends State<MenteeRegisterSteperWidget> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: currentStep,
      controlsBuilder: (context, details) {
        return Padding(
          padding: EdgeInsets.only(top: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppTextButton(
                textButton: currentStep < 2
                    ? S.of(context).Continue
                    : S.of(context).register,
                textStyle:
                    AppStyles.style18Meduim.copyWith(color: Colors.white),
                buttonHeight: 40.h,
                buttonWidth: 120.w,
                borderRadius: 10.r,
                onPressed: () {
                  if (currentStep < 2) {
                    setState(() {
                      currentStep++;
                    });
                  } else {
                    context.navigateToReplacement(Routes.bottomNavBar);
                  }
                },
              ),
              AppTextButton(
                textButton: S.of(context).cancel,
                backgroundColor: const Color(0xFFF9F6FD),
                textStyle: AppStyles.style18MeduimBlack,
                buttonHeight: 40,
                buttonWidth: 120,
                borderRadius: 10,
                onPressed: () {
                  setState(() {
                    currentStep--;
                  });
                },
              ),
            ],
          ),
        );
      },
      connectorColor: const WidgetStatePropertyAll(Color(0xFF103A69)),
      onStepTapped: (value) {
        setState(() {
          currentStep = value;
        });
      },
      steps: [
        Step(
          title: Text(S.of(context).emailAndPasswordStep,
              style: AppStyles.style20Meduim),
          content: const EmailAndPasswordStep(),
        ),
        Step(
          title: Text(S.of(context).personalInformationStep,
              style: AppStyles.style20Meduim),
          content: const PersonalInformationStep(),
        ),
        Step(
          title: Text(S.of(context).yourCareerStep,
              style: AppStyles.style20Meduim),
          content: const CareerInformationStep(),
        ),
      ],
    );
  }
}
