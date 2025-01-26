import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class EmailAndPasswordStep extends StatefulWidget {
  const EmailAndPasswordStep({super.key});

  @override
  State<EmailAndPasswordStep> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<EmailAndPasswordStep> {
  bool isObscureText = true;
  bool isObscureTextConfirm = true;
  IconData visibility = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).email, style: AppStyles.style18MeduimBlack),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.emailAddress,
          hintText: 'mentoreaapp19@gmail.com',
          validator: (value) {},
        ),
        verticalSpace(16),
        Text(S.of(context).password, style: AppStyles.style18MeduimBlack),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          hintText: '********',
          validator: (value) {},
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
        verticalSpace(16),
        Text(S.of(context).confirmPassword,
            style: AppStyles.style18MeduimBlack),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          hintText: '********',
          validator: (value) {},
          isObscureText: isObscureTextConfirm,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureTextConfirm = !isObscureTextConfirm;
              });
            },
            icon: Icon(
              isObscureTextConfirm == true ? visibility : Icons.visibility,
            ),
          ),
        ),
      ],
    );
  }
}
