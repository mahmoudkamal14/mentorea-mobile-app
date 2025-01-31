import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class CardSettingItemWidget extends StatelessWidget {
  const CardSettingItemWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.image,
  });

  final String title;
  final Function() onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(title, style: AppStyles.style24Meduim),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Color(0xFF103A69),
          ),
        ),
      ),
    );
  }
}
