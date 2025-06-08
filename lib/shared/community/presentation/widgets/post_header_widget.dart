import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';
import 'package:mentorea_mobile_app/core/helper/functions/format_post_time.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/shared/community/presentation/logic/post/community_post_cubit.dart';

class PostHeaderWidget extends StatelessWidget {
  const PostHeaderWidget({super.key, required this.postModel});

  final PostResponseModel postModel;

  @override
  Widget build(BuildContext context) {
    var post = CommunityPostCubit.get(context);
    return Row(
      children: [
        CircleAvatar(
          radius: 28.r,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          foregroundColor: Theme.of(context).iconTheme.color,
          child: postModel.pathImage != null
              ? Image.network(postModel.pathImage)
              : Image.asset(
                  'assets/images/default_user.png',
                  color: Theme.of(context).iconTheme.color,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
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
          elevation: 0,
          onSelected: (value) {
            if (value == 'option 1') {
              post.updatePost(postModel.id!);
            } else if (value == 'option 2') {
              post.deletePost(postModel.id!);
            }
          },
          enabled: postModel.id! == getCachedUserData()!.id ? true : false,
          itemBuilder: (context) => [
            PopupMenuItem(
                value: 'option 1',
                child: Text(
                  'Edit',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            PopupMenuItem(
                value: 'option 2',
                child: Text(
                  'Delete',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
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
