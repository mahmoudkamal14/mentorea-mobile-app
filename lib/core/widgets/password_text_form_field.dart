import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/validator.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({
    super.key,
    this.title,
    required this.passwordController,
  });

  final String? title;
  final TextEditingController passwordController;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool isObscureText = true;
  IconData visibility = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title ?? S.current.password,
          style: Theme.of(
            context,
          ).textTheme.titleSmall,
        ),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          hintText: '********',
          controller: widget.passwordController,
          prefixIcon: Icon(
            Icons.lock_outline_rounded,
            color: Theme.of(context).iconTheme.color,
          ),
          validator: (value) {
            return passwordValidator(value);
          },
          isObscureText: isObscureText,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            icon: Icon(isObscureText == true ? visibility : Icons.visibility),
          ),
        ),
      ],
    );
  }
}
