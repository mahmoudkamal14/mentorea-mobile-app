import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'available_time_grid_view_item.dart';

class AvailableTimeGridView extends StatelessWidget {
  const AvailableTimeGridView({super.key});

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
      itemBuilder: (context, index) => const AvailableTimeGridViewItem(),
    );
  }
}
