import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/mentor_job_title_experience_dropdown.dart';
import 'mentor_basic_information_step.dart';

class MentorRegisterSteperWidget extends StatefulWidget {
  const MentorRegisterSteperWidget({super.key});

  @override
  State<MentorRegisterSteperWidget> createState() =>
      _MentorRegisterSteperWidgetState();
}

class _MentorRegisterSteperWidgetState
    extends State<MentorRegisterSteperWidget> {
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
                    //  context.navigateToReplacement(Routes.mentorLoginScreen);
                  }
                },
              ),
              AppTextButton(
                textButton: S.of(context).cancel,
                backgroundColor: Colors.deepOrange,
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
      onStepTapped: (value) {
        setState(() {
          currentStep = value;
        });
      },
      steps: [
        Step(
          content: const MentorBasicInformationStep(),
          title: Text(
            'Basic Information',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Step(
          content: const MentorJobTitleExperienceDropdown(),
          title: Text(
            'Experience Work',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Step(
          content: const MentorBasicInformationStep(),
          title: Text(
            'Additional Details',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
