import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_body_widget.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_header_widget.dart';

class PostInfoWidget extends StatelessWidget {
  const PostInfoWidget({
    super.key,
    required this.postModel,
  });

  final PostResponseModel postModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostHeaderWidget(postModel: postModel),
        verticalSpace(16),
        PostBodyWidget(postModel: postModel),
        verticalSpace(4),
        const Divider(color: Color(0xFF103A69)),
      ],
    );
  }
}
