import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/datasource/local/mentors_data.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/mentor_profile_screen.dart';

class RecommendedMentorListViewItem extends StatelessWidget {
  const RecommendedMentorListViewItem({super.key, required this.mentor});
  final MentorInfo mentor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => MentorProfileScreen(mentor: mentor),
          ),
        );
      },
      child: ContainerCardWidget(
        width: 240.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                mentor.image,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
            verticalSpace(12),
            Text(
              mentor.name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            verticalSpace(4),
            Text(
              mentor.job,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            verticalSpace(12),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${mentor.numOfSessions} ${S.current.session}  ',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: '(${mentor.numOfReviews} ${S.current.review})',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            verticalSpace(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.current.Experience,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    verticalSpace(4),
                    Text(
                      '${mentor.experience} ${S.current.years}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${mentor.rate}',
                        style: Theme.of(context).textTheme.bodyMedium),
                    horizontalSpace(4),
                    const Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
