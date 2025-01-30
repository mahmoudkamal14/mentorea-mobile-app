import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

Widget animationImage(int index, int delay, Widget child) {
  if (index == 1) {
    return FadeInDown(
      delay: Duration(milliseconds: delay),
      child: child,
    );
  }
  return FadeInUp(
    delay: Duration(milliseconds: delay),
    child: child,
  );
}

animationWidget({required int delay, required Widget child}) {
  return FadeInUp(
    delay: Duration(milliseconds: delay),
    child: child,
  );
}

Widget animationText({int? index, required int delay, required Widget child}) {
  if (index == 1) {
    return FadeInRight(
      delay: Duration(milliseconds: delay),
      child: child,
    );
  }
  return FadeInLeft(
    delay: Duration(milliseconds: delay),
    child: child,
  );
}
