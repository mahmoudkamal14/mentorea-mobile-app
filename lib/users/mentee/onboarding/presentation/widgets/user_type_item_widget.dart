import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/users/mentee/onboarding/data/models/user_type_model.dart';

class UserTypeItemWidget extends StatelessWidget {
  const UserTypeItemWidget({
    super.key,
    required this.userType,
    required this.index,
    required this.selectedIndex,
  });

  final List<UserTypeModel> userType;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
      decoration: ShapeDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2.01.w,
            color: index == selectedIndex
                ? const Color(0xFF103A69)
                : const Color(0x19718096),
          ),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(userType[index].image, width: 180.w),
          verticalSpace(20),
          Text(
            userType[index].user,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
