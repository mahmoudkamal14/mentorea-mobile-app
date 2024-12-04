import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({super.key});

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  bool isObscureText = true;
  bool isObscureTextConfirm = true;
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
        verticalSpace(16),
        Text(
          'Confirm password',
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
        verticalSpace(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2, color: Color(0xFFCDC1D9)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            horizontalSpace(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'By signing up,I understand and agree to ',
                  style: AppStyles.style16Meduim.copyWith(
                    color: const Color(0xFF120E1A),
                  ),
                ),
                verticalSpace(4),
                Text(
                  'Term of Service',
                  style: AppStyles.style16Meduim.copyWith(
                    color: const Color(0xFF5215B6),
                  ),
                ),
              ],
            ),
          ],
        ),
        verticalSpace(30),
        AppTextButton(
          textButton: 'Create an account',
          textStyle: AppStyles.style18Meduim.copyWith(color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}
