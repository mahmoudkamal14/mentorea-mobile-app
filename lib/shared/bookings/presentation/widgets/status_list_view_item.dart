import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusListViewItem extends StatelessWidget {
  const StatusListViewItem({
    super.key,
    required this.itemIndex,
    required this.status,
    required this.selectedIndex,
  });

  final int itemIndex;
  final int selectedIndex;

  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: itemIndex == selectedIndex
            ? Colors.blue
            : Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(
          width: 1.3.w,
          color: itemIndex == selectedIndex
              ? Colors.blue
              : Theme.of(context).iconTheme.color!,
        ),
      ),
      child: Center(
        child: Text(
          status,
          style: itemIndex == selectedIndex
              ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  )
              : Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
