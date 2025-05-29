// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/fields/field_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/mentor/price_session_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/app_dropdown_button_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class MentorJobTitleExperienceDropdown extends StatefulWidget {
  const MentorJobTitleExperienceDropdown({super.key});

  @override
  _MentorJobTitleExperienceDropdownState createState() =>
      _MentorJobTitleExperienceDropdownState();
}

class _MentorJobTitleExperienceDropdownState
    extends State<MentorJobTitleExperienceDropdown> {
  String? selectedSpecialization;
  String? selectedField;
  int? selectedExperience;

  final List<int> experienceLevels = List.generate(15, (index) => index + 3);

  @override
  Widget build(BuildContext context) {
    var specializationData = RegisterCubit.get(context).allFieldsList;
    var cubit = RegisterCubit.get(context);

    List<Field> getFieldsForSelectedSpecialization() {
      final specialization = specializationData.firstWhere(
        (element) => element.specializationName == selectedSpecialization,
        orElse: () => FieldResponseModel(specializationName: '', fields: []),
      );
      return specialization.fields;
    }

    final fieldOptions = getFieldsForSelectedSpecialization();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(6),
        AppDropdownButtonFormField(
          value: selectedSpecialization,
          label: S.of(context).selectSpecialization,
          onChanged: (value) {
            setState(() {
              selectedSpecialization = value;
              selectedField = null;
            });
          },
          items: specializationData.map((specialization) {
            return DropdownMenuItem<String>(
              value: specialization.specializationName,
              child: Text(specialization.specializationName),
            );
          }).toList(),
        ),
        verticalSpace(20),
        AppDropdownButtonFormField(
          value: selectedField,
          label: S.of(context).selectYourFieldOfStudy,
          onChanged: (value) {
            setState(() {
              selectedField = value;

              final selectedFieldModel = fieldOptions.firstWhere(
                (field) => field.name == value,
              );

              cubit.fieldId = selectedFieldModel.id;
            });
          },
          items: fieldOptions.map((field) {
            return DropdownMenuItem<String>(
              value: field.name,
              child: Text(field.name),
            );
          }).toList(),
        ),
        verticalSpace(20),
        AppDropdownButtonFormField<int>(
          value: selectedExperience,
          label: 'Select Experience Level',
          onChanged: (value) {
            setState(() {
              selectedExperience = value;
              cubit.numberOfExperience = value;
            });
          },
          items: experienceLevels.map((exp) {
            return DropdownMenuItem(
                value: exp, child: Text('$exp ${S.of(context).years}'));
          }).toList(),
        ),
        verticalSpace(20),
        const PriceSessionWidget(),
      ],
    );
  }
}
