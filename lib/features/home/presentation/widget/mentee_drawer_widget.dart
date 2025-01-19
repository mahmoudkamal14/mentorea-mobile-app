import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/features/profile/widgets/mentee_profile_list_tile_info.dart';
import 'package:mentorea_mobile_app/features/profile/widgets/profile_image_widget.dart';

class MenteeDrawerWidget extends StatelessWidget {
  const MenteeDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFF9F6FD),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileImageWidget(),
          verticalSpace(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ali Daif Taha', style: AppStyles.style24Meduim),
                verticalSpace(20),
                Text('Back-End Developer', style: AppStyles.style16Regular),
                verticalSpace(20),
                Container(
                  width: double.infinity,
                  height: 1.h,
                  color: const Color(0xFF103A69),
                ),
                const MenteeProfileListTileInfo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
