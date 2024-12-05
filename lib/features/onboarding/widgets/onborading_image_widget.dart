import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoradingImageWidget extends StatelessWidget {
  const OnBoradingImageWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40, bottom: 40, right: 16.w, left: 16.w),
      child: SvgPicture.asset(image),
    );
  }
}
