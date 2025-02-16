import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerCardWidget extends StatelessWidget {
  const ContainerCardWidget({
    super.key,
    required this.child,
    this.height,
    this.width,
  });

  final Widget child;

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height,
      padding: const EdgeInsets.all(14.10),
      decoration: ShapeDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.01.w, color: const Color(0x19718096)),
          borderRadius: BorderRadius.circular(16.12.r),
        ),
        shadows: [
          BoxShadow(
            color: Theme.of(context).scaffoldBackgroundColor,
            blurRadius: 10.07.r,
            offset: const Offset(1.01, 1.01),
            spreadRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}
