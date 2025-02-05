import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/divider_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class CommunityPostListViewItem extends StatefulWidget {
  const CommunityPostListViewItem({
    super.key,
    required this.selectedItem,
  });

  final int selectedItem;

  @override
  State<CommunityPostListViewItem> createState() =>
      _CommunityPostListViewItemState();
}

class _CommunityPostListViewItemState extends State<CommunityPostListViewItem> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 28.r,
                backgroundImage: const AssetImage('assets/images/daif.png'),
              ),
              horizontalSpace(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ali Daif',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  verticalSpace(4),
                  Text(
                    'Senior Backend Developer',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(16),
          Text(
            'This is what i learned in my recent course\n“The whole secret of existence”\n\n"The whole secret of existence lies in the pursuit of meaning, purpose, and connection. It is a delicate dance between self-discovery, compassion for others, and embracing the ever-unfolding mysteries of life. Finding harmony in the ebb and flow of experiences, we unlock the profound beauty that resides within our shared journey."',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          verticalSpace(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('38' ' ${S.current.likes}',
                  style: Theme.of(context).textTheme.bodySmall),
              Text('12' ' ${S.current.comments}',
                  style: Theme.of(context).textTheme.bodySmall),
              Text('6' ' ${S.current.repost}',
                  style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const DividerWidget(),
          verticalSpace(8),
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
              horizontalSpace(8),
              Icon(Icons.share, color: Theme.of(context).iconTheme.color),
            ],
          ),
        ],
      ),
    );
  }
}
