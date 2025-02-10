import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/notification_list_view_item.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        leading: const AppbarIcon(),
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        centerTitle: true,
        title: Text(
          S.current.notifications,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 4.w),
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationListViewItem(isOpened: true),
              NotificationListViewItem(isOpened: true),
              NotificationListViewItem(isOpened: false),
              NotificationListViewItem(isOpened: false),
              NotificationListViewItem(isOpened: false),
              NotificationListViewItem(isOpened: false),
            ],
          ),
        ),
      ),
    );
  }
}
