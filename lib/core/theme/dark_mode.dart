import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF1C1C1E),
  primaryColor: const Color(0xFF1C1C1E),
  appBarTheme: AppBarTheme(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF1C1C1E),
      systemNavigationBarIconBrightness: Brightness.light,
    ),
    backgroundColor: const Color(0xFF1C1C1E),
    elevation: 0,
    actionsIconTheme: const IconThemeData(color: Color(0xFFE0E0E0)),
    iconTheme: const IconThemeData(color: Color(0xFFE0E0E0)),
    titleTextStyle: TextStyle(
      color: const Color(0xFFE0E0E0),
      fontSize: 24.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: const Color(0xFFE0E0E0),
      fontSize: 28.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    titleMedium: TextStyle(
      color: const Color(0xFFE0E0E0),
      fontSize: 24.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    titleSmall: TextStyle(
      color: const Color(0xFFB0B0B0),
      fontSize: 18.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
    bodyLarge: TextStyle(
      color: const Color(0xFFE0E0E0),
      fontSize: 24.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
    bodyMedium: TextStyle(
      color: const Color(0xFFE0E0E0),
      fontSize: 20.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    bodySmall: TextStyle(
      color: const Color(0xFFB0B0B0),
      fontSize: 16.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
  ),
  useMaterial3: false,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color(0xFF161617),
    selectedIconTheme: const IconThemeData(color: Color(0xFFE0E0E0)),
    unselectedIconTheme: const IconThemeData(color: Color(0xFFE0E0E0)),
    selectedLabelStyle: TextStyle(
      color: const Color(0xFFE0E0E0),
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      height: 1.2.h,
    ),
    // unselectedLabelStyle: TextStyle(
    //   color: const Color(0xFFB0C4DE),
    //   fontSize: 13.sp,
    //   fontWeight: FontWeight.w400,
    //   height: 1.2,
    // ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(const Color(0xFF103A69)),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      overlayColor: MaterialStateProperty.all(const Color(0xFF103A69)),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      )),
      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
        vertical: 14.h,
        horizontal: 24.w,
      )),
      elevation: MaterialStateProperty.all(2),
    ),
  ),
  iconTheme: const IconThemeData(color: Color(0xFFE0E0E0)),
  hoverColor: const Color(0xFF161617),
  cardColor: Colors.grey[900],
  canvasColor: const Color.fromARGB(255, 119, 93, 83),
  hintColor: Colors.white,
  dividerColor: const Color(0xFFB0B0B0),
  secondaryHeaderColor: const Color.fromARGB(255, 55, 55, 49),
);
