import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';

class MentorProfileImage extends StatelessWidget {
  const MentorProfileImage({
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
                  backgroundImage: AssetImage('assets/images/fawzy.png'),
                ),
              ),
            ),
          ],
        ),
        verticalSpace(100),
        Text(
          'Mahmoud Fawzy',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        verticalSpace(4),
        Text(
          'Senior Back-End Developer at Google',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
