// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';

class ProfileListTileWidget extends StatelessWidget {
  const ProfileListTileWidget({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
    this.lastItem,
  });

  final String image;
  final String title;
  final bool? lastItem;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: 60.h,
            width: double.infinity,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      Theme.of(context).appBarTheme.backgroundColor,
                  child: SvgPicture.asset(
                    image,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                horizontalSpace(16),
                Text(title, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
          lastItem == true
              ? const SizedBox.shrink()
              : Container(
                  width: double.infinity,
                  height: 1.h,
                  color: Theme.of(context).dividerColor,
                ),
        ],
      ),
    );
  }
}
