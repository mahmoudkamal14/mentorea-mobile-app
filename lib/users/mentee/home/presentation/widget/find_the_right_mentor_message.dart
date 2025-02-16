import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class FindTheRightMentorMessage extends StatelessWidget {
  const FindTheRightMentorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.blueGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.current.FindTheRightMentorTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                ),
                verticalSpace(8),
                Text(
                  S.current.FindTheRightMentorContent,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white70),
                ),
              ],
            ),
          ),
          Expanded(
            child: SvgPicture.asset(
                'assets/images/undraw_online_learning_re_qw08 (2).svg'),
          ),
        ],
      ),
    );
  }
}
