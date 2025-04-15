import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';

class MenteeProfileImage extends StatelessWidget {
  const MenteeProfileImage({
    super.key,
  });

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
              child: const CircleAvatar(
                radius: 90,
                child: CircleAvatar(
                  radius: 86,
                  backgroundImage: AssetImage('assets/images/daif.png'),
                ),
              ),
            ),
          ],
        ),
        verticalSpace(100),
        Text('Mohamed Gamal', style: Theme.of(context).textTheme.titleMedium),
        verticalSpace(4),
        Text(
          'Junior Flutter Developer',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
