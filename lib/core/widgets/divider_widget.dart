import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? const Color(0xFF103A69),
      indent: 16.w,
      endIndent: 16.w,
    );
  }
}
