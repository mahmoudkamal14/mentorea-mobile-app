import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isArabic() ? Alignment.centerLeft : Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          context.navigateTo(Routes.forgotPasswordScreen);
        },
        child: Text(
          S.of(context).forgotPassword,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
