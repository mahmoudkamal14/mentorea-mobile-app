import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/features/auth/presentation/widgets/forgot%20password/pin_code_verification.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ForgorPasswordFormWidget extends StatelessWidget {
  const ForgorPasswordFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).email,
          style: AppStyles.style18Meduim.copyWith(color: Colors.black),
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
          textStyle: AppStyles.style18Meduim.copyWith(color: Colors.white),
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
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 400.h,
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          child: const PinCodeVerification(),
        );
      },
    );
  }
}
