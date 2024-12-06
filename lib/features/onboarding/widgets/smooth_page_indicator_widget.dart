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
      effect: SlideEffect(
        spacing: 8.0,
        radius: 10.0,
        dotWidth: 50.0,
        dotHeight: 5.0.h,
        paintStyle: PaintingStyle.fill,
        strokeWidth: 1.5,
        dotColor: Colors.grey,
        activeDotColor: const Color(0xFF103A69),
      ),
    );
  }
}
