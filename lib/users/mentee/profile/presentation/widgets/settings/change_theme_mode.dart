import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ChangeThemeMode extends StatefulWidget {
  const ChangeThemeMode({super.key});

  @override
  State<ChangeThemeMode> createState() => _ChangeThemeModeState();
}

class _ChangeThemeModeState extends State<ChangeThemeMode> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: const Icon(
          Icons.dark_mode_outlined,
          color: Color(0xFF103A69),
          size: 28,
        ),
        title: Text(S.of(context).darkMode, style: AppStyles.style24Meduim),
        trailing: Switch(
          activeColor: const Color(0xFF103A69),
          value: isOpened,
          onChanged: (value) {
            setState(() {
              isOpened = !isOpened;
            });
          },
        ),
      ),
    );
  }
}
