import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class MentorTabBarOverview extends StatelessWidget {
  const MentorTabBarOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About', style: AppStyles.style24Meduim),
          verticalSpace(8),
          Text(
            "I'm Mahmoud ✦ a Senior and Back-End Developer with 5+ years of experience in startups and large companies. I love to create user-centered products that solve real problems. I'm skilled in product management, UXUI, product design, interaction design, agile methodology, user research, wireframing, prototyping, usability testing, and more!",
            style: AppStyles.style16Regular,
          ),
          verticalSpace(30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Education', style: AppStyles.style24Meduim),
              verticalSpace(8),
              SizedBox(
                height: 60,
                child: ListTile(
                  leading: const Icon(
                    Icons.school_outlined,
                    size: 30,
                    color: Colors.amber,
                  ),
                  title: Text(
                    'Software Engineering',
                    style: AppStyles.style24Meduim,
                  ),
                  subtitle: Text(
                    "Bachelor's degree  . ( 2021 - 2025 )",
                    style: AppStyles.style16Meduim,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
