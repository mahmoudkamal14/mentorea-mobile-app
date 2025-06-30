import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/features/settings/presentation/widgets/change_password_bloc_listener.dart';
import 'package:mentorea_mobile_app/features/settings/presentation/widgets/change_password_form_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangePasswordBlocListener(
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).changePassword),
          leading: const AppbarIcon(),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
              child: Column(
                spacing: 22.h,
                children: [
                  SvgPicture.asset('assets/images/New_Password.svg'),
                  Text(
                    S.current.changePasswordContent,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const ChangePasswordFormWidget(),
                  TextButton(
                    onPressed: () {
                      context.navigateTo(Routes.forgotPasswordScreen);
                    },
                    child: Text(
                      S.of(context).forgotPassword,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
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
