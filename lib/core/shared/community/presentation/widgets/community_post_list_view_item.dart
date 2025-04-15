import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/divider_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/datasource/local/list_posts_data.dart';

class CommunityPostListViewItem extends StatefulWidget {
  const CommunityPostListViewItem({
    super.key,
    required this.selectedItem,
    required this.posts,
  });

  final int selectedItem;
  final PostsData posts;

  @override
  State<CommunityPostListViewItem> createState() =>
      _CommunityPostListViewItemState();
}

class _CommunityPostListViewItemState extends State<CommunityPostListViewItem> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      width: 356.w,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 28.r,
                backgroundImage: AssetImage(widget.posts.userData.image),
              ),
              horizontalSpace(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.posts.userData.name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  verticalSpace(4),
                  Text(
                    widget.posts.userData.job,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.more_vert_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
            ],
          ),
          verticalSpace(16),
          Text(
            widget.posts.body,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          verticalSpace(16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${widget.posts.numOfLikes}' ' ${S.current.likes}',
                    style: Theme.of(context).textTheme.bodySmall),
                Text('${widget.posts.numOfComments}' ' ${S.current.comments}',
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
          const DividerWidget(),
          verticalSpace(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    liked = !liked;
                  });
                },
                child: liked
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.favorite_border,
                        color: Theme.of(context).iconTheme.color,
                      ),
              ),
              horizontalSpace(8),
              Icon(
                Icons.comment_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
            ],
          ),
          verticalSpace(4),
          const DividerWidget(),
          Row(
            children: [
              CircleAvatar(
                radius: 28.r,
                backgroundImage: const AssetImage('assets/images/daif.png'),
              ),
              horizontalSpace(12),
              Expanded(
                child: AppTextFormField(
                  textInputType: TextInputType.text,
                  hintText: 'Add a comment',
                  validator: (value) {},
                  suffixIcon: const Icon(Icons.image),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
