import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/widgets/chat_list_view_item.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        leading: const AppbarIcon(),
        centerTitle: true,
        title: Text(
          'Chats',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
          child: Column(
            spacing: 10.h,
            children: [
              ChatListViewItem(unRead: true),
              ChatListViewItem(unRead: false),
              ChatListViewItem(unRead: false),
              ChatListViewItem(unRead: false),
            ],
          ),
        ),
      ),
    );
  }
}
