import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast({required String msg, required Color color}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP_RIGHT,
    timeInSecForIosWeb: 2,
    fontSize: 16.0,
    backgroundColor: color,
  );
}

void showSnackBar({
  required BuildContext context,
  required String message,
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      width: MediaQuery.sizeOf(context).width * 0.95,
      backgroundColor: color ?? Colors.green,
      content: Text(message, textAlign: TextAlign.center),
      padding: EdgeInsets.only(bottom: 20.h),
    ),
  );
}
