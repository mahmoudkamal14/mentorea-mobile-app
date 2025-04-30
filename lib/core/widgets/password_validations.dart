import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
          isArabic() == true
              ? 'يجب أن تحتوي على حرف صغير واحد على الأقل'
              : 'Must contain at least 1 lowercase letter',
          hasLowerCase,
          context,
        ),
        buildValidationRow(
          isArabic() == true
              ? 'يجب أن تحتوي على حرف كبير واحد على الأقل'
              : 'Must contain at least 1 capital letter',
          hasUpperCase,
          context,
        ),
        buildValidationRow(
          isArabic() == true
              ? r'يجب أن تحتوي على رمز واحد على الأقل ( $, #, @,..)'
              : r'Must contain at least 1 symbol ( $, #, @,..)',
          hasSpecialCharacters,
          context,
        ),
        buildValidationRow(
          isArabic() == true
              ? 'يجب أن تحتوي على رقم واحد على الأقل'
              : 'Must contain at least 1 number',
          hasNumber,
          context,
        ),
        buildValidationRow(
          isArabic() == true
              ? 'يجب أن تتكون من 8 أحرف على الأقل'
              : 'Must be at least 8 characters',
          hasMinLength,
          context,
        ),
      ],
    );
  }
}

Widget buildValidationRow(String text, bool hasValidated, context) {
  return Row(
    children: [
      hasValidated
          ? const Icon(Icons.check_rounded, color: Colors.green)
          : CircleAvatar(
              radius: 2.5, backgroundColor: Theme.of(context).iconTheme.color),
      horizontalSpace(6),
      Expanded(
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 15.sp,
                decorationColor: Colors.green,
                decorationThickness: 2,
                color: hasValidated
                    ? Colors.green
                    : Theme.of(context).iconTheme.color,
              ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    ],
  );
}
