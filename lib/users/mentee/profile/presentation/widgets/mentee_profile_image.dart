import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/model/mentee_profile_response_model.dart';

class MenteeProfileImage extends StatelessWidget {
  const MenteeProfileImage({super.key, required this.menteeProfileModel});
  final MenteeProfileResponseModel menteeProfileModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 120.h,
              color: Theme.of(context).appBarTheme.backgroundColor,
            ),
            Positioned(
              top: 30.h,
              child: CircleAvatar(
                radius: 90,
                backgroundColor: Colors.grey.shade200,
                child: CircleAvatar(
                  radius: 86,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  backgroundImage: menteeProfileModel.pathPhoto != null
                      ? NetworkImage(menteeProfileModel.pathPhoto!)
                      : const AssetImage(
                          'assets/images/default_user.png',
                        ) as ImageProvider,
                ),
              ),
            ),
          ],
        ),
        verticalSpace(100),
        Text(menteeProfileModel.name!,
            style: Theme.of(context).textTheme.titleMedium),
        verticalSpace(4),
        Text(
          menteeProfileModel.email!,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
