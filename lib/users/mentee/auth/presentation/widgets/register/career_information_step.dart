import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/Mentee/auth/presentation/widgets/register/field_of_study_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class CareerInformationStep extends StatelessWidget {
  const CareerInformationStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).selectYourFieldOfStudy,
            style: AppStyles.style20Meduim),
        verticalSpace(8),
        const FieldOfStudyWidget(),
        // verticalSpace(16),
        // Text('Select your specialization', style: AppStyles.style20Meduim),
        // verticalSpace(8),
        // FieldOfStudyWidget(listOptions: []),
        verticalSpace(16),
        Text(S.of(context).yourGoal, style: AppStyles.style18MeduimBlack),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.text,
          maxLines: 5,
          hintText: 'Im .......',
          validator: (value) {},
        ),
      ],
    );
  }
}
