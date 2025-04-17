import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/forgot%20password/forgot_password_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/forgot%20password/otp_code_reset_password_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/password_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/password_validator_instructions.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ResetPasswordFormWidget extends StatelessWidget {
  const ResetPasswordFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: Form(
        key: ForgotPasswordCubit.get(context).formKeyReset,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OtpCodeResetPasswordWidget(
              otpCodeController:
                  ForgotPasswordCubit.get(context).otpCodeController,
            ),
            verticalSpace(16),
            PasswordFormField(
              title: S.current.confirmPassword,
              passwordController:
                  ForgotPasswordCubit.get(context).passwordController,
            ),
            verticalSpace(8),
            PasswordValidatorInstructions(
              passwordController:
                  ForgotPasswordCubit.get(context).passwordController,
            ),
            verticalSpace(30),
            BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
              builder: (context, state) {
                return SizedBox(
                  width: double.infinity,
                  child: AppTextButton(
                    textButton: 'حفظ كلمة المرور',
                    isLoading:
                        state is ResetPasswordLoadingState ? true : false,
                    onPressed: () {
                      if (ForgotPasswordCubit.get(
                        context,
                      ).formKeyReset.currentState!.validate()) {
                        ForgotPasswordCubit.get(context).resetPassword(
                          email: CacheHelper.getSecuredData(
                            key: CacheHelperKeys.email,
                          ),
                        );
                      }
                    },
                  ),
                );
              },
            ),
            verticalSpace(22),
            GestureDetector(
              onTap: () {
                ForgotPasswordCubit.get(context).forgotPassword();
              },
              child: Text(
                'إعادة إرسال الرمز',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
