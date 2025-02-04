import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/drawer%20widget/mentee_profile_list_tile_info.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/drawer_profile_image.dart';

class MenteeDrawerWidget extends StatelessWidget {
  const MenteeDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DrawerProfileImage(),
            verticalSpace(85),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ali Daif Taha',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  verticalSpace(10),
                  Text(
                    'Machine Learning Engineer',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  verticalSpace(20),
                  Container(
                    width: double.infinity,
                    height: 1.h,
                    color: Theme.of(context).dividerColor,
                  ),
                  verticalSpace(10),
                  const MenteeProfileListTileInfo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
