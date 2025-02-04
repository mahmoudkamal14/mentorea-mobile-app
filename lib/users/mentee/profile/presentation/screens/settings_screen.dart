import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/settings/card_setting_item_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/settings/change_theme_mode.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/settings/notification_playing_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          S.current.Settings,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: SafeArea(
        child: Column(
          spacing: 10.h,
          children: [
            CardSettingItemWidget(
              title: 'Edit Profile',
              image: 'assets/icons/user-pen.svg',
              onTap: () {},
            ),
            CardSettingItemWidget(
              title: 'Change Password',
              image: 'assets/icons/password-lock.svg',
              onTap: () {},
            ),
            CardSettingItemWidget(
              title: 'Change Language',
              image: 'assets/icons/language-exchange.svg',
              onTap: () {},
            ),
            const NotificationPlayingWidget(),
            const ChangeThemeMode(),
            CardSettingItemWidget(
              title: 'Rate Us',
              image: 'assets/icons/feedback-review.svg',
              onTap: () {},
            ),
            CardSettingItemWidget(
              title: 'Delete Account',
              image: 'assets/icons/delete-user.svg',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
