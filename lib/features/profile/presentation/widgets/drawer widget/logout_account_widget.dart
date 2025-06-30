import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/features/profile/presentation/logic/profile_cubit.dart';
import 'package:mentorea_mobile_app/features/profile/presentation/widgets/drawer%20widget/profile_list_tile_widget.dart';

class LogoutAccountWidget extends StatelessWidget {
  const LogoutAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProfileListTileWidget(
      image: 'assets/icons/power_settings_new.svg',
      title: S.of(context).Logout,
      lastItem: true,
      onTap: () async {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.noHeader,
          customHeader: SvgPicture.asset(
            'assets/icons/power_settings_new.svg',
            color: Theme.of(context).iconTheme.color,
            width: 50,
          ),
          animType: AnimType.rightSlide,
          title: isArabic() ? 'اختر إجراءً' : 'Select an option',
          desc: isArabic()
              ? 'هل ترغب في تسجيل الخروج'
              : 'Do you want to log out?',
          reverseBtnOrder: true,
          btnCancelText: S.current.cancel,
          btnOkText: S.current.Continue,
          buttonsTextStyle: TextStyle(fontSize: 20.sp, color: Colors.white),
          btnCancelOnPress: () {},
          btnOkOnPress: () {
            ProfileCubit.get(context).logoutUser();
          },
        ).show();
      },
    );
  }
}
