import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'availavle_date_list_view_item.dart';

class AvailableDateListView extends StatefulWidget {
  const AvailableDateListView({super.key});

  @override
  State<AvailableDateListView> createState() => _AvailableDateListViewState();
}

class _AvailableDateListViewState extends State<AvailableDateListView> {
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedItemIndex = index;
              });
            },
            child: AvailavleDateListViewItem(
              slots: 4,
              selectedItemIndex: selectedItemIndex,
              itemIndex: index,
            ),
          ),
        ),
      ),
    );
  }
}
