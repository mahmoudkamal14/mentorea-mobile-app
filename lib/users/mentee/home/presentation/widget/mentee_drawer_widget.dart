import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/logic/profile_cubit.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/logic/profile_state.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/widgets/drawer%20widget/mentee_profile_list_tile_info.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/drawer_profile_image.dart';

class MenteeDrawerWidget extends StatelessWidget {
  const MenteeDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return getCachedUserData() == null
            ? const SizedBox.shrink()
            : Drawer(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DrawerProfileImage(
                          profileImage: getCachedUserData()!.image),
                      verticalSpace(85),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              getCachedUserData()!.name!,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            verticalSpace(10),
                            Text(
                              getCachedUserData()!.email!,
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
      },
    );
  }
}
