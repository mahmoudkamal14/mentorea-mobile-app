import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class MenteeInterestsAndBioStep extends StatelessWidget {
  const MenteeInterestsAndBioStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).about,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(4),
        AppTextFormField(
          textInputType: TextInputType.text,
          maxLines: 5,
          hintText: 'I am Mahmoud Kamal ........',
          validator: (value) {},
        ),
        verticalSpace(20),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.transparent,
              sheetAnimationStyle: AnimationStyle(
                  curve: Curves.easeInCubic,
                  duration: const Duration(milliseconds: 900)),
              builder: (context) {
                return Container(
                  decoration: BoxDecoration(color: Colors.grey[600]),
                  height: MediaQuery.sizeOf(context).height * 0.80,
                  child: Column(
                    children: [
                      Text(
                        'Select your interests',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      verticalSpace(30),
                      // const MenteeInterestsGridView(),
                    ],
                  ),
                );
              },
            );
          },
          child: ContainerCardWidget(
            child: Text(
              'Select your interests',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}
