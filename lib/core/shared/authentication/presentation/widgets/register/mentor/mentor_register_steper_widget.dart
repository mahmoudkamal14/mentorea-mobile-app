import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/additional_details_step.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/basic_information_step.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/birthday_and_location_step.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class MentorRegisterSteperWidget extends StatefulWidget {
  const MentorRegisterSteperWidget({super.key});

  @override
  State<MentorRegisterSteperWidget> createState() =>
      _MentorRegisterSteperWidgetState();
}

class _MentorRegisterSteperWidgetState
    extends State<MentorRegisterSteperWidget> {
  int currentStep = 0;

  GlobalKey<FormState> basicInfoFormKey = GlobalKey();

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
      steps: [
        Step(
          content: BasicInformationStep(
            basicInformationFormKey: basicInfoFormKey,
          ),
          title: Text(
            S.current.basicInformation,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Step(
          content: const BirthdayAndLocationStep(),
          title: Text(
            'Birthday And Location',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        // Step(
        //   content: const BasicInformationStep(),
        //   title: Text(
        //     'Additional Details',
        //     style: Theme.of(context).textTheme.bodyLarge,
        //   ),
        // ),
        Step(
          content: const AdditionalDetailsStep(),
          title: Text(
            S.current.additionalDetails,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
