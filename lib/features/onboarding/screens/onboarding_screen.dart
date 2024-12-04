import 'package:flutter/material.dart';
import '../widgets/pageview_builder.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController nextPage = PageController();
  int index =0 ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff113C6C), Color(0xff051424)],
          begin: Alignment.topLeft,
           end: Alignment.bottomRight,
         ),

      ),
      child: PageViewBuilder(),
    );
  }
}
