import 'package:flutter/material.dart';

/// يُظهر الصفحة التالية عن طريق انزلاقها من جانب إلى آخر
Route<dynamic>? slidePageRoute(Widget page, {RouteSettings? settings}) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

///  يتلاشى المحتوى الحالي ليظهر المحتوى الجديد تدريجيًا.

Route<dynamic>? fadePageRoute(Widget page, {RouteSettings? settings}) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}

///  يبدأ المحتوى الجديد من حجم صغير ثم يكبر ليملأ الشاشة.

Route<dynamic>? scalePageRoute(Widget page, {RouteSettings? settings}) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween = Tween(begin: 0.0, end: 1.0)
          .chain(CurveTween(curve: Curves.easeInOut));
      var scaleAnimation = animation.drive(tween);

      return ScaleTransition(
        scale: scaleAnimation,
        child: child,
      );
    },
  );
}

///  تدور الشاشة الجديدة في مكانها لتظهر
Route<dynamic>? rotationPageRoute(Widget page, {RouteSettings? settings}) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return RotationTransition(
        turns: animation,
        child: child,
      );
    },
  );
}

Route<dynamic>? smoothEaseInOutPageRoute(Widget page,
    {RouteSettings? settings}) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween = Tween(begin: const Offset(1.0, 0.0), end: Offset.zero)
          .chain(CurveTween(curve: Curves.easeInOut));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
