import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FieldListViewItem extends StatelessWidget {
  const FieldListViewItem({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.fields,
  });

  final int index;
  final int selectedIndex;
  final List<String> fields;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: selectedIndex == index
            ? Theme.of(context).appBarTheme.backgroundColor
            : Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(
          width: 1.3.w,
          color: index == selectedIndex
              ? const Color(0xFF103A69)
              : Theme.of(context).iconTheme.color!,
        ),
      ),
      child: Center(
        child: Text(
          fields[index],
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
