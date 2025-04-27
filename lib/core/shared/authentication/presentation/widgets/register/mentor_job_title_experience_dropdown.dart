// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_dropdown_button_form_field.dart';

class MentorJobTitleExperienceDropdown extends StatefulWidget {
  const MentorJobTitleExperienceDropdown({super.key});

  @override
  _MentorJobTitleExperienceDropdownState createState() =>
      _MentorJobTitleExperienceDropdownState();
}

class _MentorJobTitleExperienceDropdownState
    extends State<MentorJobTitleExperienceDropdown> {
  String? selectedCategory;
  String? selectedSpecialization;
  String? selectedJobTitle;
  String? selectedExperience;

  final Map<String, Map<String, List<String>>> jobTitles = {};

  final List<String> experienceLevels =
      List.generate(15, (index) => '${index + 1} years');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(6),
        AppDropdownButtonFormField(
          value: selectedCategory,
          label: 'Select Category',
          onChanged: (value) {
            setState(() {
              selectedCategory = value;
              selectedSpecialization = null;
              selectedJobTitle = null;
            });
          },
          items: jobTitles.keys.map((category) {
            return DropdownMenuItem(value: category, child: Text(category));
          }).toList(),
        ),
        verticalSpace(20),
        AppDropdownButtonFormField(
          value: selectedSpecialization,
          label: 'Select Specialization',
          onChanged: (value) {
            setState(() {
              selectedSpecialization = value;
              selectedJobTitle = null;
            });
          },
          items: selectedCategory == null
              ? []
              : jobTitles[selectedCategory]!.keys.map((specialization) {
                  return DropdownMenuItem(
                      value: specialization, child: Text(specialization));
                }).toList(),
        ),
        const SizedBox(height: 20),
        AppDropdownButtonFormField(
          value: selectedJobTitle,
          label: 'Select Job Title',
          onChanged: (value) {
            setState(() {
              selectedJobTitle = value;
            });
          },
          items: selectedSpecialization == null
              ? []
              : jobTitles[selectedCategory]![selectedSpecialization]!
                  .map((title) {
                  return DropdownMenuItem(value: title, child: Text(title));
                }).toList(),
        ),
        verticalSpace(20),
        AppDropdownButtonFormField(
          value: selectedExperience,
          label: 'Select Experience Level',
          onChanged: (value) {
            setState(() {
              selectedExperience = value;
            });
          },
          items: experienceLevels.map((exp) {
            return DropdownMenuItem(value: exp, child: Text(exp));
          }).toList(),
        ),
      ],
    );
  }
}
