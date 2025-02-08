import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/widget/register/mentor_already_have_an_account_widget.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/widget/register/mentor_create_account_message_widget.dart';

class MentorRegisterScreen extends StatelessWidget {
  const MentorRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.h),
            child: Column(
              children: [
                const MentorCreateAccountMessageWidget(),
                verticalSpace(24),
                const MentorCreateAccountMessageWidget(),
                verticalSpace(20),
                const MentorAlreadyHaveAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
