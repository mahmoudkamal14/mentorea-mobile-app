import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';
import 'package:mentorea_mobile_app/core/helper/functions/format_post_time.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/react/comment_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/react/community_react_cubit.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class CommentListViewItem extends StatelessWidget {
  const CommentListViewItem({super.key, required this.commentResponseModel});

  final CommentResponseModel commentResponseModel;

  @override
  Widget build(BuildContext context) {
    var comment = CommunityReactCubit.get(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: ContainerCardWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 28.r,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  foregroundColor: Theme.of(context).iconTheme.color,
                  backgroundImage: commentResponseModel.pathImage != null
                      ? NetworkImage(commentResponseModel.pathImage)
                      : const AssetImage(
                          'assets/images/default_user.png',
                        ) as ImageProvider,
                ),
                horizontalSpace(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      commentResponseModel.name!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    verticalSpace(4),
                    Text(
                      formatPostTime(commentResponseModel.createdAt!),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const Spacer(),
                PopupMenuButton<String>(
                  elevation: 0,
                  onSelected: (value) {
                    if (value == 'option 1') {
                      comment.updateComment(
                        postId: commentResponseModel.postId!,
                        commentId: commentResponseModel.id!,
                        content: comment.commentController.text,
                      );
                    } else if (value == 'option 2') {
                      comment.deleteComment(
                        postId: commentResponseModel.postId!,
                        commentId: commentResponseModel.id!,
                      );
                    }
                  },
                  enabled:
                      commentResponseModel.userId! == getCachedUserData()!.id
                          ? true
                          : false,
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
            ),
            verticalSpace(8),
            ContainerCardWidget(
              child: Text(
                commentResponseModel.content!,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
