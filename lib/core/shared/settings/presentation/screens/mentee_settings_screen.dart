import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/shared/settings/presentation/logic/settings_cubit.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/core/shared/settings/presentation/widgets/card_setting_item_widget.dart';
import 'package:mentorea_mobile_app/core/shared/settings/presentation/widgets/change_language_widget.dart';
import 'package:mentorea_mobile_app/core/shared/settings/presentation/widgets/change_theme_mode.dart';
import 'package:mentorea_mobile_app/core/shared/settings/presentation/widgets/notification_playing_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/mentee_profile_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/mentee_profile_state.dart';

class MenteeSettingsScreen extends StatelessWidget {
  const MenteeSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MenteeProfileCubit>()..getMenteeProfile(),
        ),
        BlocProvider(
          create: (context) => getIt<SettingsCubit>(),
        ),
      ],
      child: Scaffold(
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
              BlocBuilder<MenteeProfileCubit, MenteeProfileState>(
                builder: (context, state) {
                  return CardSettingItemWidget(
                    title: S.current.EditProfile,
                    image: 'assets/icons/user-pen.svg',
                    onTap: () async {
                      context.navigateTo(Routes.editMenteeProfileScreen);
                    },
                  );
                },
              ),
              CardSettingItemWidget(
                title: S.current.changePassword,
                image: 'assets/icons/password-lock.svg',
                onTap: () {
                  context.navigateTo(Routes.changePasswordScreen);
                },
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
      ),
    );
  }
}
