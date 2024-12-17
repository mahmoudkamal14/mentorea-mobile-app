import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenteeEditProfileScreen extends StatelessWidget {
  const MenteeEditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
          child: const Column(
            children: [
              Text('Personal Info Screen'),
            ],
          ),
        ),
      ),
    );
  }
}
