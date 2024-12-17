import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';

class AppbarIcon extends StatelessWidget {
  const AppbarIcon({
    super.key,
    required this.icon,
  });

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: const ShapeDecoration(
          color: Color(0xFF103A69),
          shape: OvalBorder(),
        ),
        child: Icon(
          icon ?? Icons.arrow_back_ios_new_sharp,
          color: Colors.white,
        ),
      ),
    );
  }
}
