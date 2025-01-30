import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/profile_list_tile_widget.dart';

class MenteeProfileListTileInfo extends StatelessWidget {
  const MenteeProfileListTileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileListTileWidget(
          image: 'assets/icons/account_circle.svg',
          title: S.of(context).PersonalInformation,
          onTap: () {
            context.navigateTo(Routes.menteePersonalInfo);
          },
        ),
        ProfileListTileWidget(
          image: 'assets/icons/credit_card.svg',
          title: S.of(context).CardDetails,
          onTap: () {
            //   context.navigateTo(Routes.menteePersonalInfo);
          },
        ),
        ProfileListTileWidget(
          image: 'assets/icons/notifications_none.svg',
          title: S.of(context).ManageNotifications,
          onTap: () {
            context.navigateTo(Routes.manageNotifications);
          },
        ),
        ProfileListTileWidget(
          image: 'assets/icons/settings.svg',
          title: S.of(context).Settings,
          onTap: () {
            context.navigateTo(Routes.settingsScreen);
          },
        ),
        ProfileListTileWidget(
          image: 'assets/icons/privacy_tip.svg',
          title: S.of(context).PrivacyPolicy,
          onTap: () {
            context.navigateTo(Routes.privacyPolicy);
          },
        ),
        ProfileListTileWidget(
          image: 'assets/icons/power_settings_new.svg',
          title: S.of(context).Logout,
          colorIcon: Colors.amber,
          lastItem: true,
          onTap: () {
            context.navigateToReplacement(Routes.loginScreen);
          },
        ),
      ],
    );
  }
}
