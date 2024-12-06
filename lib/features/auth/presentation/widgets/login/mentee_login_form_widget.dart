import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';

import '../forgot password/forgot_password_widget.dart';

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
          'Email',
          style: AppStyles.style18Meduim.copyWith(color: Colors.black),
        ),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.emailAddress,
          hintText: 'mentoreaapp19@gmail.com',
          validator: (value) {},
        ),
        verticalSpace(16),
        Text(
          'Password',
          style: AppStyles.style18Meduim.copyWith(color: Colors.black),
        ),
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
            icon: Icon(
              isObscureText == true ? visibility : Icons.visibility,
            ),
          ),
        ),
        verticalSpace(8),
        const ForgotPasswordWidget(),
        verticalSpace(30),
        AppTextButton(
          textButton: 'Login',
          textStyle: AppStyles.style18Meduim.copyWith(color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}
