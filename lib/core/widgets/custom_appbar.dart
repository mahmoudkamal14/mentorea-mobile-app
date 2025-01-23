import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AppbarIcon(),
        Text(title, style: AppStyles.style24Meduim),
        Container(
          width: 40,
          height: 40,
          decoration: const ShapeDecoration(
            color: Color(0xFF103A69),
            shape: OvalBorder(),
          ),
          child: Image.asset('assets/icons/Mentorea Icon.png'),
        ),
      ],
    );
  }
}
