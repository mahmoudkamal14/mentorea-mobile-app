import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/mentee_select_profile_image.dart';

class AdditionalDetailsStep extends StatefulWidget {
  const AdditionalDetailsStep({super.key});

  @override
  State<AdditionalDetailsStep> createState() => _AdditionalDetailsStepState();
}

class _AdditionalDetailsStepState extends State<AdditionalDetailsStep> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SelectProfileImage(),
        verticalSpace(20),
        Text(
          S.current.chooseYourGender,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(4),
        Row(
          children: [
            Expanded(
              child: RadioListTile(
                title: Text(S.current.male,
                    style: Theme.of(context).textTheme.bodyMedium),
                value: 'Male',
                groupValue: selectedGender,
                selectedTileColor: Theme.of(context).iconTheme.color,
                onChanged: (String? value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
              ),
            ),
            Expanded(
              child: RadioListTile(
                title: Text(S.current.female,
                    style: Theme.of(context).textTheme.bodyMedium),
                value: 'Female',
                groupValue: selectedGender,
                onChanged: (String? value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
