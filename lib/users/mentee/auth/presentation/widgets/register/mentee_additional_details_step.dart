import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/auth/presentation/widgets/register/mentee_select_profile_image.dart';

class MenteeAdditionalDetailsStep extends StatefulWidget {
  const MenteeAdditionalDetailsStep({super.key});

  @override
  State<MenteeAdditionalDetailsStep> createState() =>
      _MenteeAdditionalDetailsStepState();
}

class _MenteeAdditionalDetailsStepState
    extends State<MenteeAdditionalDetailsStep> {
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
        RadioListTile(
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
        RadioListTile(
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
      ],
    );
  }
}
