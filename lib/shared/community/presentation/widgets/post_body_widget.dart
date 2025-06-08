import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class PostBodyWidget extends StatefulWidget {
  const PostBodyWidget({super.key, required this.postModel});

  final PostResponseModel postModel;

  @override
  State<PostBodyWidget> createState() => _PostBodyWidgetState();
}

class _PostBodyWidgetState extends State<PostBodyWidget> {
  bool liked = false;
  int like = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.postModel.content!,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(16),
        const Divider(color: Color(0xFF103A69)),
        verticalSpace(4),
        ContainerCardWidget(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              likePostWidget(context),
              horizontalSpace(40),
              commentPostWidget(context),
            ],
          ),
        ),
      ],
    );
  }

  Row commentPostWidget(BuildContext context) {
    return Row(
      children: [
        Text(
          '${widget.postModel.countComment}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        horizontalSpace(4),
        Icon(
          Icons.comment_outlined,
          color: Theme.of(context).iconTheme.color,
        ),
      ],
    );
  }

  Row likePostWidget(BuildContext context) {
    return Row(
      children: [
        Text(
          '${widget.postModel.countLike! + like}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        horizontalSpace(4),
        GestureDetector(
          onTap: () {
            setState(() {
              liked = !liked;
              if (liked) {
                like++;
              } else {
                like--;
              }
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
      ],
    );
  }
}
