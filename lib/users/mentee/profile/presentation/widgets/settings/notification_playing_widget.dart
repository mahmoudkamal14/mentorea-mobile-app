import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class NotificationPlayingWidget extends StatefulWidget {
  const NotificationPlayingWidget({super.key});

  @override
  State<NotificationPlayingWidget> createState() =>
      _NotificationPlayingWidgetState();
}

class _NotificationPlayingWidgetState extends State<NotificationPlayingWidget> {
  bool isOpened = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: const Icon(
          Icons.notifications_none_sharp,
          color: Color(0xFF103A69),
          size: 30,
        ),
        title: Text('Notifications', style: AppStyles.style24Meduim),
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
