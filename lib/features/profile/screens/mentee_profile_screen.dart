import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/features/profile/widgets/mentee_profile_list_tile_info.dart';
import 'package:mentorea_mobile_app/features/profile/widgets/profile_image_widget.dart';

class MenteeProfileScreen extends StatelessWidget {
  const MenteeProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfileImageWidget(),
          verticalSpace(32),
          const MenteeProfileListTileInfo(),
        ],
      ),
    );
  }
}
