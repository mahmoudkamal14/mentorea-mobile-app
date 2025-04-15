import 'package:flutter/material.dart';

class AppbarIcon extends StatelessWidget {
  const AppbarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Theme.of(context).appBarTheme.iconTheme?.color,
      ),
    );
  }
}
