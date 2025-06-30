import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentor_response_model.dart';

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
                Text(
                  S.current.Experience,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                verticalSpace(8),
                SizedBox(
                  height: 74,
                  child: ListTile(
                    leading: Icon(
                      Icons.work,
                      size: 30,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    title: Text(
                      mentor.fieldName!,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    subtitle: Text(
                      '${mentor.numberOfExperience!} ${S.current.years}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
