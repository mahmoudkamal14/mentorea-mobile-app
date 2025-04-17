import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/helper/functions/app_regex.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/login/login_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/forgot%20password/forgot_password_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/email_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  bool isObscureText = true;
  IconData visibility = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    var loginCubit = LoginCubit.get(context);
    return Form(
      key: loginCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EmailTextFormField(emailController: loginCubit.emailController),
          verticalSpace(16),
          Text(
            S.of(context).password,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          verticalSpace(8),
          AppTextFormField(
            textInputType: TextInputType.visiblePassword,
            hintText: '********',
            controller: loginCubit.passwordController,
            prefixIcon: Icon(
              Icons.lock_outline_rounded,
              color: Theme.of(context).iconTheme.color,
            ),
            validator: (value) {
              AppRegex.isPasswordValid(value!);
              if (value.isEmpty) {
                return isArabic() == true
                    ? 'بالرجاء إدخال كلمة المرور'
                    : 'Please enter your password';
              } else {
                return null;
              }
            },
            isObscureText: isObscureText,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              icon: Icon(
                isObscureText == true ? visibility : Icons.visibility,
              ),
            ),
          ),
          verticalSpace(8),
          const ForgotPasswordWidget(),
          verticalSpace(30),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return AppTextButton(
                textButton: S.of(context).login,
                isLoading: state is LoginLoadingState ? true : false,
                onPressed: () {
                  _validateAndToHomeScreen(loginCubit, context);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  void _validateAndToHomeScreen(LoginCubit loginCubit, BuildContext context) {
    if (loginCubit.formKey.currentState!.validate()) {
      LoginCubit.get(context).emitLoginStates();
    }
  }
}
