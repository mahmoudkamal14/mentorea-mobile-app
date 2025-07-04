import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/logic/forgot%20password/forgot_password_cubit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpCodeResetPasswordWidget extends StatefulWidget {
  const OtpCodeResetPasswordWidget({
    super.key,
  });

  @override
  State<OtpCodeResetPasswordWidget> createState() =>
      _OtpCodeResetPasswordWidgetState();
}

class _OtpCodeResetPasswordWidgetState
    extends State<OtpCodeResetPasswordWidget> {
  bool hasError = false;
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    var cubit = ForgotPasswordCubit.get(context);

    return Directionality(
      textDirection: TextDirection.ltr,
      child: AutofillGroup(
        child: Column(
          children: [
            PinCodeTextField(
              appContext: context,
              length: 6,
              obscureText: false,
              obscuringCharacter: '*',
              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              cursorColor: Colors.black,
              animationDuration: const Duration(milliseconds: 300),
              controller: cubit.otpCodeController,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedFillColor: Colors.white,
                inactiveColor: Colors.blue,
              ),
              keyboardType: TextInputType.number,
              onCompleted: (v) {
                debugPrint("Completed");
              },
              onChanged: (value) {
                debugPrint(value);
                setState(() {
                  currentText = value;
                });
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'لا يمكن ترك الكود فارغ';
                } else {
                  return null;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
