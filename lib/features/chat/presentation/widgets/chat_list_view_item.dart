// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class ChatListViewItem extends StatefulWidget {
  ChatListViewItem({
    super.key,
    required this.unRead,
  });

  bool? unRead;

  @override
  State<ChatListViewItem> createState() => _ChatListViewItemState();
}

class _ChatListViewItemState extends State<ChatListViewItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.unRead = false;
        });
        context.navigateTo(Routes.chatsDetailsScreen);
      },
      child: ContainerCardWidget(
        child: Row(
          children: [
            CircleAvatar(
              radius: 36.r,
              backgroundImage: const AssetImage('assets/images/fawzy.png'),
            ),
            horizontalSpace(12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4.h,
                children: [
                  Text(
                    'Mahmoud Fawzy',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Hello, I will like to tell you that you can message me about anything',
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            horizontalSpace(8),
            Column(
              spacing: 6.h,
              children: [
                Text(
                  '11:20 am',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                widget.unRead == true
                    ? CircleAvatar(
                        radius: 12.r,
                        backgroundColor: const Color(0xFFFF656F),
                        child: const Text(
                          '2',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
