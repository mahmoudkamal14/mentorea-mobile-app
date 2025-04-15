import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/datasource/local/mentors_data.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/mentor_profile_screen.dart';

class MentorCardListViewItem extends StatelessWidget {
  const MentorCardListViewItem({
    super.key,
    required this.mentor,
  });

  final MentorInfo mentor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (builder) => MentorProfileScreen(mentor: mentor)));
      },
      child: ContainerCardWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: ShapeDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              child: Image.asset(
                mentor.image,
                fit: BoxFit.fill,
                height: 200.h,
                width: double.infinity,
              ),
            ),
            verticalSpace(10),
            Text(
              mentor.name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            verticalSpace(4),
            Text(
              '${mentor.job} at Google',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            verticalSpace(12),
            Row(
              children: [
                Icon(
                  Icons.work_outline_sharp,
                  color: Theme.of(context).iconTheme.color!,
                ),
                horizontalSpace(16),
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
                const Spacer(),
                Text(
                  '${mentor.pricePerSession} ' r'$' ' /  ${S.current.session}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            verticalSpace(12),
            Row(
              children: [
                const Icon(Icons.group_outlined),
                horizontalSpace(16),
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
                const Spacer(),
                Text('${mentor.rate}',
                    style: Theme.of(context).textTheme.bodyMedium),
                horizontalSpace(4),
                const Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
