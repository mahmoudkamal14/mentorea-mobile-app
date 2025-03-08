import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/auth/presentation/widgets/register/mentee_birthday_and_location_step.dart';
import 'package:mentorea_mobile_app/users/mentee/auth/presentation/widgets/register/mentee_interests_and_bio_step.dart';
import 'mentee_additional_details_step.dart';
import 'mentee_basic_information_step.dart';

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
      physics: const NeverScrollableScrollPhysics(),
      controlsBuilder: (context, details) {
        return Padding(
          padding: EdgeInsets.only(top: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppTextButton(
                textButton: currentStep < 3
                    ? S.of(context).Continue
                    : S.of(context).register,
                buttonHeight: 40.h,
                buttonWidth: 120.w,
                borderRadius: 10.r,
                onPressed: () {
                  if (currentStep < 3) {
                    setState(() {
                      currentStep++;
                    });
                  } else {
                    context.navigateToReplacement(Routes.menteeBottomNavBar);
                  }
                },
              ),
              AppTextButton(
                textButton: S.of(context).cancel,
                textStyle: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Theme.of(context).hintColor),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
      connectorThickness: 2,
      steps: [
        Step(
          content: const MenteeBasicInformationStep(),
          title: Text(
            S.current.basicInformation,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Step(
          content: const MenteeBirthdayAndLocationStep(),
          title: Text(
            'Contact & Personal Details',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Step(
          content: const MenteeAdditionalDetailsStep(),
          title: Text(
            S.current.additionalDetails,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Step(
          content: const MenteeInterestsAndBioStep(),
          title: Text(
            'Interests & Bio',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
