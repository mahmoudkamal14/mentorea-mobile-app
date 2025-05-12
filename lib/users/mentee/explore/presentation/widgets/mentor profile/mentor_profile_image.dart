import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentor_response_model.dart';

class MentorProfileImage extends StatelessWidget {
  const MentorProfileImage({super.key, required this.mentor});

  final MentorResponseModel mentor;

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
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).iconTheme.color,
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(86.r),

                      image: mentor.pathPhoto != null
                          ? DecorationImage(
                              image: NetworkImage(mentor.pathPhoto!),
                              fit: BoxFit.cover,
                            )
                          : const DecorationImage(
                              image: AssetImage('assets/images/mentor1.png'),
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                )),
          ],
        ),
        verticalSpace(100),
        Text(
          mentor.name!,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        verticalSpace(4),
        Text(
          mentor.email!,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
