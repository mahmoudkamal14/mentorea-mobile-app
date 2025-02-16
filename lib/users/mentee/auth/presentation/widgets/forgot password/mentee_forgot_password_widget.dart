import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

import 'mentee_forgot_password_form_widget.dart';

class MenteeForgotPasswordWidget extends StatelessWidget {
  const MenteeForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isArabic() ? Alignment.centerLeft : Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          forgotPasswordBottomSheet(context);
        },
        child: Text(
          S.of(context).forgotPassword,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }

  PersistentBottomSheetController forgotPasswordBottomSheet(
      BuildContext context) {
    return showBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      clipBehavior: Clip.antiAlias,
      sheetAnimationStyle: AnimationStyle(
        curve: Curves.slowMiddle,
        duration: const Duration(milliseconds: 1200),
      ),
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 400.h,
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
          decoration: ShapeDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
            ),
          ),
          child: Column(
            children: [
              Text(
                S.of(context).forgotPasswordTitle,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              verticalSpace(16),
              Text(
                S.of(context).forgotPasswordContent,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              verticalSpace(30),
              const ForgorPasswordFormWidget(),
            ],
          ),
        );
      },
    );
  }
}
