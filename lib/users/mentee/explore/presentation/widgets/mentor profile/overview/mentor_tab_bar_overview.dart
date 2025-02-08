import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';

class MentorTabBarOverview extends StatelessWidget {
  const MentorTabBarOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About', style: Theme.of(context).textTheme.bodyLarge),
          verticalSpace(8),
          Text(
            "I'm Mahmoud ✦ a Senior and Back-End Developer with 5+ years of experience in startups and large companies. I love to create user-centered products that solve real problems. I'm skilled in product management, UXUI, product design, interaction design, agile methodology, user research, wireframing, prototyping, usability testing, and more!",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          verticalSpace(30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Education', style: Theme.of(context).textTheme.bodyLarge),
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
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  subtitle: Text(
                    "Bachelor's degree  . ( 2021 - 2025 )",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(30),
        ],
      ),
    );
  }
}
