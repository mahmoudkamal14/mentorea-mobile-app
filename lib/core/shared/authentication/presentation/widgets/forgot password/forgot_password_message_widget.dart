import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';

class ForgotPasswordMessageWidget extends StatelessWidget {
  const ForgotPasswordMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isArabic() ? Alignment.centerLeft : Alignment.centerRight,
      child: TextButton(
        style: ButtonStyle(
          overlayColor: WidgetStatePropertyAll(
            Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        onPressed: () {
          context.navigateTo(Routes.forgotPasswordScreen);
        },
        child: Text(
          'هل نسيت كلمة المرور ؟',
          style: Theme.of(
            context,
          ).textTheme.titleSmall!.copyWith(color: const Color(0xff040B32)),
        ),
      ),
    );
  }
}
