import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'available_time_grid_view_item.dart';

class AvailableTimeGridView extends StatefulWidget {
  const AvailableTimeGridView({super.key});

  @override
  State<AvailableTimeGridView> createState() => _AvailableTimeGridViewState();
}

class _AvailableTimeGridViewState extends State<AvailableTimeGridView> {
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 2.5,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedItemIndex = index;
          });
        },
        child: AvailableTimeGridViewItem(
          itemIndex: index,
          selectedItemIndex: selectedItemIndex,
        ),
      ),
    );
  }
}
