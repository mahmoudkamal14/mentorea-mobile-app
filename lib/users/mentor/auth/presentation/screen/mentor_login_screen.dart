import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/users/mentee/auth/presentation/widgets/login_with_google_and_linkedin.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/widget/login/mentor_dont_have_an_account_widget.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/widget/login/mentor_login_form_widget.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/widget/login/mentor_welcome_message_widget.dart';

class MentorLoginScreen extends StatelessWidget {
  const MentorLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
            child: Column(
              children: [
                const MentorWelcomeMessageWidget(),
                verticalSpace(32),
                const MentorLoginFormWidget(),
                verticalSpace(24),
                const LoginWithGoogleAndLinkedin(),
                verticalSpace(43),
                const MentorDontHaveAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
