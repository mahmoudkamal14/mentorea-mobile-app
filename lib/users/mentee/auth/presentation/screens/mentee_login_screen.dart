import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/Mentee/auth/presentation/widgets/login/dont_have_an_account_widget.dart';
import 'package:mentorea_mobile_app/Mentee/auth/presentation/widgets/login/mentee_login_form_widget.dart';
import 'package:mentorea_mobile_app/Mentee/auth/presentation/widgets/login_with_google_and_linkedin.dart';
import 'package:mentorea_mobile_app/Mentee/auth/presentation/widgets/login/welcome_message_widget.dart';

class MenteeLoginScreen extends StatelessWidget {
  const MenteeLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6FD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
            child: Column(
              children: [
                const WelcomeMessageWidget(),
                verticalSpace(32),
                const LoginFormWidget(),
                verticalSpace(24),
                const LoginWithGoogleAndLinkedin(),
                verticalSpace(43),
                const DontHaveAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
