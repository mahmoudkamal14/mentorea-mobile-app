import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/logic/forgot%20password/forgot_password_cubit.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/email_text_form_field.dart';

class ForgotPasswordFormWidget extends StatelessWidget {
  const ForgotPasswordFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = ForgotPasswordCubit.get(context);
    return Form(
      key: ForgotPasswordCubit.get(context).formKeyForgot,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EmailTextFormField(
            emailController: cubit.emailController,
          ),
          verticalSpace(32),
          BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
            builder: (context, state) {
              return SizedBox(
                width: double.infinity,
                child: AppTextButton(
                  textButton: 'إرسال الرمز',
                  isLoading: state is ForgotPasswordLoadingState ? true : false,
                  onPressed: () {
                    if (cubit.formKeyForgot.currentState!.validate()) {
                      ForgotPasswordCubit.get(context)
                          .forgotPassword(email: cubit.emailController.text);
                    }
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
