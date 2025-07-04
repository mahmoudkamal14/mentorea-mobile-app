import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/login/dont_have_an_account_widget.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/login/login_bloc_listener.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/login/login_form_widget.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/login/welcome_message_widget.dart';
import 'package:mentorea_mobile_app/features/onboarding/data/models/user_type_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, required this.userType});

  final UserType userType;

  @override
  Widget build(BuildContext context) {
    return LoginBlocListener(
      userType: userType,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
              child: Column(
                children: [
                  WelcomeMessageWidget(userType: userType),
                  verticalSpace(32),
                  const LoginFormWidget(),
                  verticalSpace(43),
                  DontHaveAnAccountWidget(
                    userType: userType,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
