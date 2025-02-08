import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Mon', style: Theme.of(context).textTheme.bodyMedium),
          verticalSpace(10),
          Text('25 Jan', style: Theme.of(context).textTheme.bodyMedium),
          verticalSpace(10),
          Text('$slots Slots', style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
