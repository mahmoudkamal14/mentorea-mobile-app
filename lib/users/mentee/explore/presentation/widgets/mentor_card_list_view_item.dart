import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class MentorCardListViewItem extends StatelessWidget {
  const MentorCardListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigateTo(Routes.mentorProfileScreen);
      },
      child: ContainerCardWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/fawzy.png',
              fit: BoxFit.fill,
              height: 200.h,
              width: double.infinity,
            ),
            verticalSpace(10),
            Text(
              'Mahmoud Fawzy',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            verticalSpace(4),
            Text(
              'Senior Back-End Developer at Google',
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
                      '5 ${S.current.years}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  r'30 $ ' ' /  ${S.current.session}',
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
                        text: '14 ${S.current.session}  ',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: '(11 ${S.current.review})',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text('4.6', style: Theme.of(context).textTheme.bodyMedium),
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
