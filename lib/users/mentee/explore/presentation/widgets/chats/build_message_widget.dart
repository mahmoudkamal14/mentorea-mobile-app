import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildMessageWidget extends StatelessWidget {
  const BuildMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: ShapeDecoration(
        color: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            topRight: Radius.circular(24.r),
            bottomLeft: Radius.circular(24.r),
          ),
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional.topEnd,
        child: Text(
          'مرحبًا، لدي استفسار حول البرمجة',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
