import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/widget/forgot%20password/mentor_pin_code_verification.dart';

class MentorForgotPasswordFormWidget extends StatelessWidget {
  const MentorForgotPasswordFormWidget({
    super.key,
  });

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
          validator: (value) {},
        ),
        verticalSpace(30),
        AppTextButton(
          textButton: S.of(context).sendCode,
          onPressed: () {
            context.pop();
            pinCodeBottomSheet(context);
          },
        ),
      ],
    );
  }

  PersistentBottomSheetController pinCodeBottomSheet(BuildContext context) {
    return showBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 450.h,
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
          child: const MentorPinCodeVerification(),
        );
      },
    );
  }
}
