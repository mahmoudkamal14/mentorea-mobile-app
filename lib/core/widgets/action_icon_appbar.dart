import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/core/functions/is_arabic.dart';

class ActionIconAppBar extends StatelessWidget {
  const ActionIconAppBar({
    super.key,
    required this.image,
    required this.onTap,
  });

  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: isArabic() == false ? 16.h : 0,
        left: isArabic() == true ? 16.h : 0,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(
          image,
          color: Theme.of(context).appBarTheme.actionsIconTheme!.color,
        ),
      ),
    );
  }
}
