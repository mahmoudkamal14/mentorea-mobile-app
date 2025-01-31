import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class NoPaymentMethodWidget extends StatelessWidget {
  const NoPaymentMethodWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        verticalSpace(200),
        Text('No Payment Found', style: AppStyles.style24Bold),
        verticalSpace(16),
        Text(
          'You can add and edit payments during checkout',
          textAlign: TextAlign.center,
          style: AppStyles.style20Meduim.copyWith(color: Colors.grey),
        ),
        verticalSpace(150),
        Container(
          width: 325.w,
          height: 185.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.add_circle_outline,
                size: 70,
                color: Color(0xFF103A69),
              ),
              verticalSpace(14),
              Text(
                'Add Payment Method',
                style: AppStyles.style24Bold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
