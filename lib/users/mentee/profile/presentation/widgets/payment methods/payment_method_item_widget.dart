import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class PaymentMethodItemWidget extends StatelessWidget {
  const PaymentMethodItemWidget({
    super.key,
    required this.title,
    required this.image,
    required this.onTap,
  });

  final String title;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1),
                  ),
                  child: SvgPicture.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
                horizontalSpace(20),
                Text(title, style: AppStyles.style24Bold),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          verticalSpace(10),
          Divider(color: Colors.grey[600], thickness: 1),
        ],
      ),
    );
  }
}
