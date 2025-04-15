import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/forgot%20password/forgot_password_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  bool isObscureText = true;
  IconData visibility = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).email,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.emailAddress,
          hintText: 'mentoreaapp19@gmail.com',
          prefixIcon: Icon(
            Icons.email,
            color: Theme.of(context).iconTheme.color,
          ),
          validator: (value) {},
        ),
        verticalSpace(16),
        Text(
          S.of(context).password,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          hintText: '********',
          prefixIcon: Icon(
            Icons.lock_outline_rounded,
            color: Theme.of(context).iconTheme.color,
          ),
          validator: (value) {},
          isObscureText: isObscureText,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            icon: Icon(
              isObscureText == true ? visibility : Icons.visibility,
            ),
          ),
        ),
        verticalSpace(8),
        const ForgotPasswordWidget(),
        verticalSpace(30),
        AppTextButton(
          textButton: S.of(context).login,
          onPressed: () {
            context.navigateToReplacement(Routes.menteeBottomNavBar);
          },
        ),
      ],
    );
  }
}
