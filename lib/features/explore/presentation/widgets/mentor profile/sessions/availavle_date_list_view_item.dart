import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class AvailavleDateListViewItem extends StatelessWidget {
  const AvailavleDateListViewItem({
    super.key,
    required this.slots,
    required this.selectedItemIndex,
    required this.itemIndex,
  });

  final int slots;
  final int selectedItemIndex;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: selectedItemIndex == itemIndex ? Colors.blue : Colors.white,
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Mon', style: AppStyles.style20Meduim),
          verticalSpace(10),
          Text('25 Jan', style: AppStyles.style20Meduim),
          verticalSpace(10),
          Text('$slots Slots', style: AppStyles.style20Meduim),
        ],
      ),
    );
  }
}
