import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/shared/authentication/presentation/logic/confirm%20email/confirm_email_cubit.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeVerification extends StatefulWidget {
  const PinCodeVerification({super.key, required this.email});

  final String email;

  @override
  State<PinCodeVerification> createState() => _PinCodeVerificationState();
}

class _PinCodeVerificationState extends State<PinCodeVerification> {
  TextEditingController otpCodeController = TextEditingController();

  bool hasError = false;
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: AutofillGroup(
        child: Form(
          key: ConfirmEmailCubit.get(context).formKeyConfirm,
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
                controller: otpCodeController,
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
              verticalSpace(22),
              BlocBuilder<ConfirmEmailCubit, ConfirmEmailState>(
                builder: (context, state) {
                  return AppTextButton(
                    textButton: 'التحقق من الرمز',
                    isLoading: state is ConfirmEmailLoadingState ? true : false,
                    onPressed: () async {
                      if (ConfirmEmailCubit.get(context)
                          .formKeyConfirm
                          .currentState!
                          .validate()) {
                        ConfirmEmailCubit.get(context).confirmEmail(
                          email: widget.email,
                          code: otpCodeController.text,
                        );
                      }
                    },
                  );
                },
              ),
              verticalSpace(22),
              GestureDetector(
                onTap: () {
                  ConfirmEmailCubit.get(context)
                      .resendOtpConfirmEmail(email: widget.email);
                },
                child: Text(
                  'إعادة إرسال الرمز',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
