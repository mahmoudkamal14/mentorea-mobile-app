import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

import 'mentee_password_update_successfully_widget.dart';

class MenteeChangePasswordWidget extends StatefulWidget {
  const MenteeChangePasswordWidget({super.key});

  @override
  State<MenteeChangePasswordWidget> createState() =>
      _MenteeChangePasswordWidgetState();
}

class _MenteeChangePasswordWidgetState
    extends State<MenteeChangePasswordWidget> {
  bool isObscureText = true;
  bool isObscureTextConfirm = true;
  IconData visibility = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.of(context).enterNewPasswordTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        verticalSpace(16),
        Text(
          S.of(context).enterNewPasswordContent,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        verticalSpace(40),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).password,
              style: Theme.of(context).textTheme.bodySmall,
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
              style: Theme.of(context).textTheme.bodySmall,
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 480.h,
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
          decoration: ShapeDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
            ),
          ),
          child: const MenteePasswordUpdateSuccessfullyWidget(),
        );
      },
    );
  }
}
