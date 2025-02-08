import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import 'mentor_change_password_widget.dart';

class MentorPinCodeVerification extends StatefulWidget {
  const MentorPinCodeVerification({super.key});

  @override
  State<MentorPinCodeVerification> createState() =>
      _MentorPinCodeVerificationState();
}

class _MentorPinCodeVerificationState extends State<MentorPinCodeVerification> {
  TextEditingController textEditingController = TextEditingController();

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.of(context).verificationCodeTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        verticalSpace(16),
        Text(
          '${S.of(context).verificationCodeContent}mentoreaapp19@gmail.com',
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        verticalSpace(40),
        PinCodeTextField(
          appContext: context,
          length: 4,
          obscureText: false,
          obscuringCharacter: '*',
          blinkWhenObscuring: true,
          animationType: AnimationType.fade,
          cursorColor: Colors.black,
          animationDuration: const Duration(milliseconds: 300),
          enableActiveFill: true,
          controller: textEditingController,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50.h,
            fieldWidth: 50.w,
            activeFillColor: Theme.of(context).hintColor,
            inactiveFillColor: Theme.of(context).hintColor,
            selectedFillColor: Theme.of(context).hintColor,
            errorBorderColor: Colors.red,
            inactiveColor: Colors.blue,
          ),
          keyboardType: TextInputType.number,
        ),
        verticalSpace(30),
        AppTextButton(
          textButton: S.of(context).submit,
          textStyle: AppStyles.style20Meduim.copyWith(color: Colors.white),
          onPressed: () {
            context.pop();
            changePasswordBottomSheet(context);
          },
        ),
        verticalSpace(12),
        TextButton(
          onPressed: () {},
          child: Text(
            '${S.of(context).resendCodeAfter} 00:52s',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }

  PersistentBottomSheetController changePasswordBottomSheet(
      BuildContext context) {
    return showBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 496.h,
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
          child: const MentorChangePasswordWidget(),
        );
      },
    );
  }

  Timer timer() => Timer.periodic(const Duration(seconds: 50), (timer) {});
}
