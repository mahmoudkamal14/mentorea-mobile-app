import 'package:flutter/material.dart';

Route<dynamic>? smoothEaseInOutPageRoute(
  Widget page, {
  RouteSettings? settings,
}) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween = Tween(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).chain(CurveTween(curve: Curves.easeInOut));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}
