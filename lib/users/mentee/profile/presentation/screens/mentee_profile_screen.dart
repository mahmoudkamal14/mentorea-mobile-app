import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/drawer_profile_image.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/drawer%20widget/mentee_profile_list_tile_info.dart';

class MenteeProfileScreen extends StatelessWidget {
  const MenteeProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const DrawerProfileImage(),
          verticalSpace(32),
          const MenteeProfileListTileInfo(),
        ],
      ),
    );
  }
}
