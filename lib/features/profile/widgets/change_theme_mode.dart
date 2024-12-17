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
    return Column(
      children: [
        SizedBox(
          height: 60,
          width: double.infinity,
          child: ListTile(
            leading: const Icon(
              Icons.mode_night,
              color: Color(0xFF103A69),
            ),
            title: Text(
              S.of(context).darkMode,
              style: AppStyles.style24Meduim,
            ),
            trailing: Switch(
              value: isOpened,
              onChanged: (value) {
                setState(() {
                  isOpened = !isOpened;
                });
              },
            ),
          ),
        ),
        const Divider(
          color: Color(0xFF103A69),
          height: 1,
          indent: 4,
          endIndent: 4,
        ),
      ],
    );
  }
}
