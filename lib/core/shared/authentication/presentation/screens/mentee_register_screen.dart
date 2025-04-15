import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/mentee_already_have_an_account_widget.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/mentee_create_account_message_widget.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/mentee_register_steper_widget.dart';

class MenteeRegisterScreen extends StatelessWidget {
  const MenteeRegisterScreen({super.key});

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
                const MenteeCreateAccountMessageWidget(),
                verticalSpace(24),
                const MenteeRegisterSteperWidget(),
                verticalSpace(20),
                const MenteeAlreadyHaveAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
