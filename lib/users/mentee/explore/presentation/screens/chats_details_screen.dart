import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/action_icon_appbar.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/chats/build_message_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/chats/receive_message_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/chats/send_message_widget.dart';

class ChatsDetailsScreen extends StatelessWidget {
  const ChatsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        leading: const AppbarIcon(),
        titleSpacing: 0,
        toolbarHeight: 80.h,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 28.r,
              backgroundImage: const AssetImage('assets/images/fawzy.png'),
            ),
            horizontalSpace(20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mahmoud Fawzy',
                    style: Theme.of(context).appBarTheme.titleTextStyle,
                  ),
                  Text(
                    'Online',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.teal),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          ActionIconAppBar(
            image: 'assets/icons/phone-call.svg',
            onTap: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BuildMessageWidget(),
              ],
            ),
            verticalSpace(20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ReceiveMessageWidget(),
              ],
            ),
            const Spacer(),
            const SendMessageWidget(),
          ],
        ),
      ),
    );
  }
}
