import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/email_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/password_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/password_validator_instructions.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class MenteeBasicInformationStep extends StatefulWidget {
  const MenteeBasicInformationStep({super.key});

  @override
  State<MenteeBasicInformationStep> createState() =>
      _MenteeBasicInformationStepState();
}

class _MenteeBasicInformationStepState
    extends State<MenteeBasicInformationStep> {
  bool isObscureText = true;
  bool isObscureTextConfirm = true;
  IconData visibility = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).name,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(4),
        AppTextFormField(
          textInputType: TextInputType.text,
          hintText: 'Mahmoud Kamal',
          prefixIcon: Icon(
            Icons.person,
            color: Theme.of(context).iconTheme.color,
          ),
          validator: (value) {},
        ),
        verticalSpace(12),
        EmailTextFormField(emailController: TextEditingController()),
        verticalSpace(12),
        PasswordFormField(passwordController: TextEditingController()),
        verticalSpace(16),
        PasswordValidatorInstructions(
            passwordController: TextEditingController()),
      ],
    );
  }
}
