import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/divider_widget.dart';

class ProfileListTileWidget extends StatelessWidget {
  const ProfileListTileWidget({
    super.key,
    required this.image,
    required this.title,
    this.colorIcon,
    required this.onTap,
    this.lastItem,
  });

  final String image;
  final String title;
  final bool? lastItem;
  final Color? colorIcon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 76.h,
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: ListTile(
                leading: CircleAvatar(child: SvgPicture.asset(image)),
                title: Text(title, style: AppStyles.style18MeduimBlack),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: colorIcon ?? const Color(0xFF103A69),
                ),
              ),
            ),
            lastItem == true ? const SizedBox.shrink() : const DividerWidget(),
          ],
        ),
      ),
    );
  }
}
