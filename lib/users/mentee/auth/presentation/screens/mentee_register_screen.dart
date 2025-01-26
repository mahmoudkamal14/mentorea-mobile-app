import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/Mentee/auth/presentation/widgets/register/already_have_an_account_widget.dart';
import 'package:mentorea_mobile_app/Mentee/auth/presentation/widgets/register/create_account_message_widget.dart';
import 'package:mentorea_mobile_app/Mentee/auth/presentation/widgets/register/mentee_register_steper_widget.dart';

class MenteeRegisterScreen extends StatelessWidget {
  const MenteeRegisterScreen({super.key});

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
                const CreateAccountMessageWidget(),
                verticalSpace(32),
                const MenteeRegisterSteperWidget(),
                verticalSpace(43),
                const AlreadyHaveAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
