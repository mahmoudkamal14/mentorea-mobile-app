import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class AvailableTimeGridViewItem extends StatelessWidget {
  const AvailableTimeGridViewItem({
    super.key,
    required this.selectedItemIndex,
    required this.itemIndex,
  });

  final int selectedItemIndex;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
          color: selectedItemIndex == itemIndex ? Colors.blue : Colors.white,
          border: Border.all(width: 1.w),
          borderRadius: BorderRadius.circular(10)),
      child: Center(child: Text('10:30 PM', style: AppStyles.style20Meduim)),
    );
  }
}
