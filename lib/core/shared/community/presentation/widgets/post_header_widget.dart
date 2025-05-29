import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/format_post_time.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/post_response_model.dart';

class PostHeaderWidget extends StatelessWidget {
  const PostHeaderWidget({super.key, required this.postModel});

  final PostResponseModel postModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 28.r,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          foregroundColor: Theme.of(context).iconTheme.color,
          backgroundImage: postModel.pathImage != null
              ? NetworkImage(postModel.pathImage)
              : const AssetImage(
                  'assets/images/default_user.png',
                ) as ImageProvider,
        ),
        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              postModel.name!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            verticalSpace(4),
            Text(
              formatPostTime(postModel.createdAt!),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const Spacer(),
        PopupMenuButton<String>(
          onSelected: (value) {
            // Handle selection
          },
          itemBuilder: (context) => [
            const PopupMenuItem(value: 'option 1', child: Text('Option 1')),
            const PopupMenuItem(value: 'option 2', child: Text('Option 2')),
          ],
          child: Icon(
            Icons.more_vert_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ],
    );
  }
}
