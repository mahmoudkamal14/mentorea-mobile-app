import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/register/additional_details_step.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/register/basic_information_step.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/register/birthday_and_location_step.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/register/about_widget_step.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/register/mentor/mentor_job_title_experience_dropdown.dart';
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
  GlobalKey<FormState> aboutFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var cubit = RegisterCubit.get(context);

    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
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
                    textButton: currentStep < 4
                        ? S.of(context).Continue
                        : S.of(context).register,
                    buttonHeight: 40.h,
                    buttonWidth: 120.w,
                    borderRadius: 10.r,
                    isLoading: state is RegisterLoadingState,
                    onPressed: () {
                      if (currentStep == 0 &&
                          basicInfoFormKey.currentState!.validate()) {
                        currentStep++;
                      } else if (currentStep == 1 &&
                          cubit.pirthDateUser() == true &&
                          cubit.locationUser.isNotEmpty) {
                        currentStep++;
                      } else if (currentStep == 2 &&
                          cubit.fieldId != null &&
                          cubit.numberOfExperience != null) {
                        currentStep++;
                      } else if (currentStep == 3 &&
                          aboutFormKey.currentState!.validate()) {
                        currentStep++;
                      } else if (currentStep == 4 &&
                          cubit.profileImageFile != null) {
                        cubit.mentorRegister();
                      } else if (currentStep == 4 &&
                          cubit.profileImageFile == null) {
                        showToast(
                          msg: 'يجب اختيار صورة للبروفايل',
                          color: Colors.red,
                        );
                      }
                      setState(() {});
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
            Step(
              content: const MentorJobTitleExperienceDropdown(),
              title: Text(
                S.current.experienceWork,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Step(
              content: AboutWidgetStep(aboutFormKey: aboutFormKey),
              title: Text(
                'The Biography',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Step(
              content: const AdditionalDetailsStep(),
              title: Text(
                S.current.additionalDetails,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        );
      },
    );
  }
}
