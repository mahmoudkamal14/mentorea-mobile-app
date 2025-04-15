// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class NotificationListViewItem extends StatefulWidget {
  NotificationListViewItem({
    super.key,
    this.isOpened,
  });

  bool? isOpened;

  @override
  State<NotificationListViewItem> createState() =>
      _NotificationListViewItemState();
}

class _NotificationListViewItemState extends State<NotificationListViewItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isOpened = false;
        });
      },
      child: ContainerCardWidget(
        child: Row(
          children: [
            CircleAvatar(
              radius: 32.r,
              backgroundImage: const AssetImage('assets/images/fawzy.png'),
            ),
            horizontalSpace(16),
            Expanded(
              child: Text(
                'Your session with Ali Daif has been confirmed',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            horizontalSpace(4),
            Column(
              children: [
                Text(
                  '2:30pm',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                widget.isOpened == true
                    ? verticalSpace(4)
                    : const SizedBox.shrink(),
                widget.isOpened == true
                    ? Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF103A69),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text(
                          'New',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.white),
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
