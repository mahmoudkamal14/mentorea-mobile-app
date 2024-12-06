import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorWidget extends StatelessWidget {
  const SmoothPageIndicatorWidget({
    super.key,
    required this.length,
    required this.controller,
  });

  final int length;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: length,
      axisDirection: Axis.horizontal,
      effect: ExpandingDotsEffect(
        activeDotColor: const Color(0xFF103A69),
        dotColor: Colors.grey,
        paintStyle: PaintingStyle.fill,
        dotWidth: 20.w,
        dotHeight: 5.0.h,
        radius: 20.0.r,
        spacing: 8.0.w,
        strokeWidth: 1.5.w,
      ),
    );
  }
}
