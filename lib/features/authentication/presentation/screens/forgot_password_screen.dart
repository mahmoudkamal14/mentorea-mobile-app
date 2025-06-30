import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/forgot%20password/forgot_password_bloc_listener.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/forgot%20password/forgot_password_form_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ForgotPasswordBlocListener(
      child: Scaffold(
        appBar: AppBar(
          leading: const AppbarIcon(),
          title: Text(S.current.forgotPasswordTitle),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
              child: Column(
                spacing: 22.h,
                children: [
                  SvgPicture.asset('assets/images/Forgot_Password.svg'),
                  Text(
                    S.current.forgotPasswordContent,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const ForgotPasswordFormWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
