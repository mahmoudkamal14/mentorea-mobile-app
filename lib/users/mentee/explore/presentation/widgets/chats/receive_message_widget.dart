import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReceiveMessageWidget extends StatelessWidget {
  const ReceiveMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: ShapeDecoration(
        color: Colors.blueGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24.r),
            bottomRight: Radius.circular(24.r),
            bottomLeft: Radius.circular(24.r),
          ),
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional.topEnd,
        child: Text(
          'مرحبًا، كيف يمكنني مساعدتك؟',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
