import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/logic/forgot%20password/forgot_password_cubit.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/forgot%20password/otp_code_reset_password_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/password_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/password_validator_instructions.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ResetPasswordFormWidget extends StatelessWidget {
  const ResetPasswordFormWidget({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    var cubit = ForgotPasswordCubit.get(context);

    return Form(
      key: ForgotPasswordCubit.get(context).formKeyReset,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const OtpCodeResetPasswordWidget(),
          verticalSpace(16),
          PasswordFormField(
            title: S.current.confirmPassword,
            passwordController: cubit.passwordController,
          ),
          verticalSpace(8),
          PasswordValidatorInstructions(
            passwordController: cubit.passwordController,
          ),
          verticalSpace(30),
          BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
            builder: (context, state) {
              return SizedBox(
                width: double.infinity,
                child: AppTextButton(
                  textButton: S.current.changePassword,
                  isLoading: state is ResetPasswordLoadingState ? true : false,
                  onPressed: () {
                    if (cubit.formKeyReset.currentState!.validate()) {
                      ForgotPasswordCubit.get(context).resetPassword(
                        email: email,
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
              cubit.forgotPassword(email: email);
            },
            child: Text(
              S.current.resendCodeAfter,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
