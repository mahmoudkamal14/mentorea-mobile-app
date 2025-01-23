import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'availavle_date_list_view_item.dart';

class AvailableDateListView extends StatelessWidget {
  const AvailableDateListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: const AvailavleDateListViewItem(slots: 4),
        ),
      ),
    );
  }
}
