import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentor_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/mentor_profile_screen.dart';

class MentorsListViewHorizontalItem extends StatelessWidget {
  const MentorsListViewHorizontalItem({super.key, required this.mentor});

  final MentorResponseModel mentor;

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
        width: 270.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: mentor.pathPhoto != null
                  ? Image.network(
                      mentor.pathPhoto,
                      fit: BoxFit.contain,
                      width: double.infinity,
                    )
                  : Image.asset(
                      'assets/images/default_user.png',
                      color: Theme.of(context).iconTheme.color,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
            ),
            verticalSpace(12),
            Text(
              mentor.name!,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            verticalSpace(4),
            Text(
              mentor.fieldName!,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            verticalSpace(12),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${mentor.numberOfSession} ${S.current.session}  ',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: '(${mentor.numerOfComment} ${S.current.review})',
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
                      '${mentor.numberOfExperience} ${S.current.years}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${mentor.rate}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
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
