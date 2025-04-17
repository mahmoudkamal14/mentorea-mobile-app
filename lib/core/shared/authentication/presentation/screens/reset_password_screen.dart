import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/forgot%20password/reset_password_bloc_listener.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/forgot%20password/reset_password_form_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return ResetPasswordBlocListener(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(title: Text(S.current.enterNewPasswordTitle)),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
              child: Column(
                spacing: 20.h,
                children: [
                  SvgPicture.asset('assets/images/New_Password.svg'),
                  Text(
                    'يجب أن تكون كلمة المرور الجديدة مختلفة عن كلمة المرور السابقة',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const ResetPasswordFormWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
