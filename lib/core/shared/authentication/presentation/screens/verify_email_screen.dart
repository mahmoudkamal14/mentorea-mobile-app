import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/confirm_email_bloc_listener.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/pin_code_validation.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return ConfirmEmailBlocListener(
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.current.verificationCodeTitle),
          leading: const AppbarIcon(),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/Verification_Code.svg'),
                verticalSpace(22),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22),
                  child: Text(
                    isArabic() == true
                        ? 'الرجاء إدخال الرمز المكون من 6 أرقام المرسل إلى: $email'
                        : 'Please enter the 6-digit code sent to: $email',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(22),
                PinCodeVerification(email: email),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
