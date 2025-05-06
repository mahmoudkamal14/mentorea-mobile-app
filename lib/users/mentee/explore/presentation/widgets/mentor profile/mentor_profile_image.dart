import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/datasource/mentors_data.dart';

class MentorProfileImage extends StatelessWidget {
  const MentorProfileImage({
    super.key,
    required this.mentor,
  });

  final MentorInfo mentor;

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
                child: CircleAvatar(
                  radius: 86,
                  backgroundImage: AssetImage(mentor.image),
                ),
              ),
            ),
          ],
        ),
        verticalSpace(100),
        Text(
          mentor.name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        verticalSpace(4),
        Text(
          '${mentor.job} at Google',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
