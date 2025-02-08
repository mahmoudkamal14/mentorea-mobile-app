import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        color: selectedItemIndex == itemIndex
            ? const Color(0xFF103A69)
            : Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(
          width: 1.w,
          color: selectedItemIndex == itemIndex
              ? const Color(0xFF103A69)
              : Theme.of(context).iconTheme.color!,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          '10:30 PM',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
