import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/validator.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.email,
          style: Theme.of(
            context,
          ).textTheme.titleSmall,
        ),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.emailAddress,
          hintText: 'user42@gmail.com',
          controller: emailController,
          prefixIcon: Icon(
            Icons.email_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
          validator: (value) {
            return validateEmail(value);
          },
        ),
      ],
    );
  }
}
