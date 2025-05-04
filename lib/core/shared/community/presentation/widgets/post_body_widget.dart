import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

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
        ContainerCardWidget(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  '${(widget.postModel.countLike! + like)}'
                  ' ${S.current.likes}',
                  style: Theme.of(context).textTheme.bodySmall),
              Text(
                  '${widget.postModel.countComment}'
                  ' ${S.current.comments}',
                  style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
        const Divider(color: Color(0xFF103A69)),
        verticalSpace(4),
        ContainerCardWidget(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
              horizontalSpace(8),
              Icon(
                Icons.comment_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
