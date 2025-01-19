import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
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
      child: Column(
        children: [
          SizedBox(
            height: 70.h,
            width: double.infinity,
            child: Row(
              children: [
                CircleAvatar(child: SvgPicture.asset(image)),
                horizontalSpace(16),
                Text(title, style: AppStyles.style18MeduimBlack),
              ],
            ),
          ),
          lastItem == true ? const SizedBox.shrink() : const DividerWidget(),
        ],
      ),
    );
  }
}
