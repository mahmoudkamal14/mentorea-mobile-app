import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';

import 'package:mentorea_mobile_app/features/chat/data/models/message_response_model.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/widgets/build_message_widget.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/widgets/receive_message_widget.dart';

class MessagesListViewItem extends StatelessWidget {
  const MessagesListViewItem({
    super.key,
    required this.messages,
    required this.index,
  });

  final List<MessageResponseModel> messages;
  final int index;

  @override
  Widget build(BuildContext context) {
    final isMe = messages[index].senderId == getCachedUserData()!.id;
    if (isMe) {
      return Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BuildMessageWidget(message: messages[index]),
          ],
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ReceiveMessageWidget(message: messages[index]),
          ],
        ),
      );
    }
  }
}
