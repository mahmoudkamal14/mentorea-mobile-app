import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentor_response_model.dart';

class ChatHeaderWidget extends StatelessWidget {
  const ChatHeaderWidget({super.key, required this.mentor});

  final MentorResponseModel mentor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 28.r,
          backgroundImage: mentor.pathPhoto != null
              ? NetworkImage(mentor.pathPhoto)
              : const AssetImage('assets/images/default_user.png')
                  as ImageProvider,
        ),
        horizontalSpace(20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mentor.name!,
                style: Theme.of(context).appBarTheme.titleTextStyle,
              ),
              Text(
                'Online',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.teal),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
