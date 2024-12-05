import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: const Color(0xff040B32),
        splash: Image.asset(
          'assets/icons/Mentorea Icon.png',
        ),
        splashIconSize: 200,
        pageTransitionType: PageTransitionType.topToBottom,
        animationDuration: const Duration(milliseconds: 800),
        nextScreen: const OnboardingScreen());
  }
}
