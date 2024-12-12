import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

import 'password_update_successfully_widget.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({super.key});

  @override
  State<ChangePasswordWidget> createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  bool isObscureText = true;
  bool isObscureTextConfirm = true;
  IconData visibility = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(S.of(context).enterNewPasswordTitle, style: AppStyles.style28Bold),
        verticalSpace(16),
        Text(
          S.of(context).enterNewPasswordContent,
          style: AppStyles.style16Regular,
          textAlign: TextAlign.center,
        ),
        verticalSpace(40),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).password,
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
                icon:
                    Icon(isObscureText == true ? visibility : Icons.visibility),
              ),
            ),
            verticalSpace(16),
            Text(
              S.of(context).confirmPassword,
              style: AppStyles.style18Meduim.copyWith(color: Colors.black),
            ),
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
            verticalSpace(30),
            AppTextButton(
              textButton: S.of(context).changePassword,
              textStyle: AppStyles.style18Meduim.copyWith(color: Colors.white),
              onPressed: () {
                context.pop();
                passwordUpdateSuccessBottomSheet(context);
              },
            ),
          ],
        )
      ],
    );
  }

  PersistentBottomSheetController passwordUpdateSuccessBottomSheet(
      BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 480.h,
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          child: const PasswordUpdateSuccessfullyWidget(),
        );
      },
    );
  }
}
