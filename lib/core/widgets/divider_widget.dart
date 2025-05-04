import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
    this.color,
    this.indent,
  });

  final Color? color;
  final double? indent;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? const Color(0xFF103A69),
      indent: indent ?? 16.w,
      endIndent: indent ?? 16.w,
    );
  }
}
