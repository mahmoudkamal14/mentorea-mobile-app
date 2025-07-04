import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

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
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListTile(
        leading: SvgPicture.asset(
          'assets/icons/bell-notification-social-media.svg',
          color: Theme.of(context).iconTheme.color,
        ),
        title: Text(
          S.current.notifications,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
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
