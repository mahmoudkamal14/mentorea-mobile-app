import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentor_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/profile/presentation/widgets/user_activity_widget.dart';

class MentorTabBarOverview extends StatelessWidget {
  const MentorTabBarOverview({super.key, required this.mentor});

  final MentorResponseModel mentor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerCardWidget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('About', style: Theme.of(context).textTheme.bodyLarge),
                verticalSpace(12),
                Text(
                  mentor.about!,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          verticalSpace(30),
          ContainerCardWidget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Education', style: Theme.of(context).textTheme.bodyLarge),
                verticalSpace(8),
                SizedBox(
                  height: 74,
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
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bachelor's degree",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          "( 2021 - 2025 )",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(30),
          const UserActivityWidget(),
        ],
      ),
    );
  }
}
