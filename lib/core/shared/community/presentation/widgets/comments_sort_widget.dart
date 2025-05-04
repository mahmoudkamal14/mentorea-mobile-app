import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class CommentsSortWidget extends StatelessWidget {
  const CommentsSortWidget({
    super.key,
    required this.postModel,
  });

  final PostResponseModel postModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${S.current.comments} (${postModel.countComment})",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16.r),
                ),
              ),
              builder: (context) => Container(
                height: 400.h,
              ),
            );
          },
          child: Text(
            'Newest first',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        horizontalSpace(4),
        Icon(
          Icons.keyboard_arrow_down,
          color: Theme.of(context).iconTheme.color,
        ),
      ],
    );
  }
}
