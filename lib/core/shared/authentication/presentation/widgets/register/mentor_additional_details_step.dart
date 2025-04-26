import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/select_profile_image.dart';

class MentorAdditionalDetailsStep extends StatefulWidget {
  const MentorAdditionalDetailsStep({super.key});

  @override
  State<MentorAdditionalDetailsStep> createState() =>
      _MentorAdditionalDetailsStepState();
}

class _MentorAdditionalDetailsStepState
    extends State<MentorAdditionalDetailsStep> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SelectProfileImage(),
        verticalSpace(20),
        Text(
          'Choose Your Gender:',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        RadioListTile(
          title: Text('Male', style: Theme.of(context).textTheme.bodyMedium),
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
          title: Text('Female', style: Theme.of(context).textTheme.bodyMedium),
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
