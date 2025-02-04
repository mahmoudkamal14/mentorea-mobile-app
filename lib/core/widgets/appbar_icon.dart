import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';

class AppbarIcon extends StatelessWidget {
  const AppbarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Theme.of(context).appBarTheme.iconTheme?.color,
      ),
    );
  }
}
