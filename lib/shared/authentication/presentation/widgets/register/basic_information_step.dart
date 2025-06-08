import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/validator.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/shared/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/email_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/password_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/password_validator_instructions.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class BasicInformationStep extends StatelessWidget {
  const BasicInformationStep(
      {super.key, required this.basicInformationFormKey});

  final GlobalKey<FormState> basicInformationFormKey;

  @override
  Widget build(BuildContext context) {
    var cubit = RegisterCubit.get(context);

    return Form(
      key: basicInformationFormKey,
      child: Column(
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
            controller: cubit.nameController,
            prefixIcon: Icon(
              Icons.person,
              color: Theme.of(context).iconTheme.color,
            ),
            validator: (value) {
              return validateName(value);
            },
          ),
          verticalSpace(12),
          EmailTextFormField(emailController: cubit.emailController),
          verticalSpace(12),
          PasswordFormField(passwordController: cubit.passwordController),
          verticalSpace(16),
          PasswordValidatorInstructions(
              passwordController: cubit.passwordController),
        ],
      ),
    );
  }
}
