import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/settings/card_setting_item_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/settings/change_language_widget.dart';
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
              title: S.current.EditProfile,
              image: 'assets/icons/user-pen.svg',
              onTap: () {
                context.navigateTo(Routes.menteePersonalInfo);
              },
            ),
            CardSettingItemWidget(
              title: S.current.changePassword,
              image: 'assets/icons/password-lock.svg',
              onTap: () {},
            ),
            const ChangeLanguageWidget(),
            const NotificationPlayingWidget(),
            const ChangeThemeMode(),
            CardSettingItemWidget(
              title: S.current.rateUs,
              image: 'assets/icons/feedback-review.svg',
              onTap: () {},
            ),
            CardSettingItemWidget(
              title: S.current.deleteAccount,
              image: 'assets/icons/delete-user.svg',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
