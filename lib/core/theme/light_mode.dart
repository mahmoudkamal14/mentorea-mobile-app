import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFF8F8F8),
  primaryColor: const Color(0xFFE0E0E0),
  appBarTheme: AppBarTheme(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: const Color(0xFF103A69),
    elevation: 0,
    actionsIconTheme: const IconThemeData(color: Colors.white),
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 24.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: const Color(0xFF1C1C1E),
      fontSize: 28.sp,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    titleMedium: TextStyle(
      color: const Color(0xFF2C2C2E),
      fontSize: 24.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w700,
      height: 0,
    ),
    titleSmall: TextStyle(
      color: const Color(0xFF4A4A4C),
      fontSize: 18.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
    bodyLarge: TextStyle(
      color: const Color(0xFF1C1C1E),
      fontSize: 24.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
    bodyMedium: TextStyle(
      color: const Color(0xFF2C2C2E),
      fontSize: 20.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
    bodySmall: TextStyle(
      color: const Color(0xFF6A6A6C),
      fontSize: 16.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
      height: 0,
    ),
  ),
  useMaterial3: false,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color(0xFF103A69),
    selectedIconTheme: const IconThemeData(color: Color(0xFFFFFFFF)),
    unselectedIconTheme: const IconThemeData(color: Color(0xFF6A6A6C)),
    selectedLabelStyle: TextStyle(
      color: const Color(0xFFFFFFFF),
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
      overlayColor: MaterialStateProperty.all(const Color(0xFF082A4F)),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      )),
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(vertical: 14.h, horizontal: 24.w),
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: Color(0xFF2C2C2E)),
  hoverColor: const Color(0xFF103A69),
  cardColor: Colors.white,
  canvasColor: const Color(0xffD85E2C),
  dividerColor: const Color(0xFF103A69),
  hintColor: Colors.black,
  secondaryHeaderColor: const Color(0xffFFFEEE),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: const Color(0xFF2C2C2E), width: 1.3.w),
      borderRadius: BorderRadius.circular(16),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: const Color(0xFF2C2C2E), width: 1.3.w),
      borderRadius: BorderRadius.circular(16),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 1.3.w),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 1.3.w),
      borderRadius: BorderRadius.circular(16),
    ),
  ),
);
