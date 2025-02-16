import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_dropdown_button_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/auth/data/datasource/local%20datasource/education_level_data.dart';

class MenteeEducationLevelDropdown extends StatefulWidget {
  const MenteeEducationLevelDropdown({super.key});

  @override
  _MenteeEducationLevelDropdownState createState() =>
      _MenteeEducationLevelDropdownState();
}

class _MenteeEducationLevelDropdownState
    extends State<MenteeEducationLevelDropdown> {
  String? selectedDegree;
  String? selectedField;

  final Map<String, List<String>> fieldsByDegree = fieldsByEducationLevel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(6),
        AppDropdownButtonFormField(
          value: selectedDegree,
          label: S.current.degreeEducation,
          onChanged: (value) {
            setState(() {
              selectedDegree = value;
              selectedField = null;
            });
          },
          items: fieldsByDegree.keys.map((degree) {
            return DropdownMenuItem(
              value: degree,
              child: Text(
                degree,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            );
          }).toList(),
        ),
        verticalSpace(20),
        AppDropdownButtonFormField(
          value: selectedField,
          label: S.current.fieldOfStudy,
          onChanged: (value) {
            setState(() {
              selectedField = value;
            });
          },
          items: selectedDegree == null
              ? []
              : fieldsByDegree[selectedDegree]!.map((field) {
                  return DropdownMenuItem(
                    value: field,
                    child: Text(
                      field,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  );
                }).toList(),
        ),
        verticalSpace(16),
        AppTextFormField(
          textInputType: TextInputType.text,
          hintText: S.current.enterYourAge,
          hintTextStyle: Theme.of(context).textTheme.titleSmall,
          validator: (value) {},
        ),
      ],
    );
  }
}
