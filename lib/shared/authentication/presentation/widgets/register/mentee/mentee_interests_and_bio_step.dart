import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/shared/authentication/data/models/fields/field_response_model.dart';
import 'package:mentorea_mobile_app/shared/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mentorea_mobile_app/shared/authentication/presentation/widgets/register/about_widget_step.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class MenteeInterestsAndBioStep extends StatefulWidget {
  const MenteeInterestsAndBioStep({super.key, required this.aboutFormKey});
  final GlobalKey<FormState> aboutFormKey;

  @override
  State<MenteeInterestsAndBioStep> createState() =>
      _MenteeInterestsAndBioStepState();
}

class _MenteeInterestsAndBioStepState extends State<MenteeInterestsAndBioStep> {
  @override
  Widget build(BuildContext context) {
    var fieldsList = RegisterCubit.get(context).fieldsList;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AboutWidgetStep(aboutFormKey: widget.aboutFormKey),
        verticalSpace(20),
        GestureDetector(
          onTap: () {
            showInterestsBottomSheet(context, fieldsList);
          },
          child: ContainerCardWidget(
            color: Theme.of(context).appBarTheme.backgroundColor,
            child: Text(
              'Select your interests',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  void showInterestsBottomSheet(BuildContext context, List<Field> fieldsList) {
    final registerCubit = RegisterCubit.get(context);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      sheetAnimationStyle: AnimationStyle(
          curve: Curves.easeInCubic,
          duration: const Duration(milliseconds: 900)),
      builder: (ctx) {
        return BlocProvider.value(
          value: registerCubit,
          child: Container(
            color: Colors.transparent,
            height: MediaQuery.sizeOf(context).height * 0.70,
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
            child: Column(
              children: [
                ContainerCardWidget(
                  child: Text(
                    'Select your interests',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                verticalSpace(10),
                BlocBuilder<RegisterCubit, RegisterState>(
                  builder: (context, state) {
                    return Expanded(
                      child: SizedBox(
                        height: 130.h,
                        child: ListView.builder(
                          itemCount: fieldsList.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: fieldsList.map((field) {
                                bool isSelected;

                                if (RegisterCubit.get(context)
                                    .fieldInterests
                                    .contains(field.id)) {
                                  isSelected = true;
                                } else {
                                  isSelected = false;
                                }

                                return ChoiceChip(
                                  label: Text(field.name),
                                  selected: isSelected,
                                  selectedColor: Colors.blueAccent,
                                  backgroundColor: Colors.grey[200],
                                  labelStyle: isSelected
                                      ? Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: Colors.white)
                                      : Theme.of(context).textTheme.bodyMedium!,
                                  onSelected: (selected) {
                                    RegisterCubit.get(context)
                                        .toggleFieldSelection(
                                            fieldId: field.id);
                                    print(
                                      'Selected fields: ${RegisterCubit.get(context).fieldInterests}',
                                    );
                                    setState(() {});
                                  },
                                );
                              }).toList(),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
