import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentor_response_model.dart';

class MentorCardListViewItem extends StatelessWidget {
  const MentorCardListViewItem({
    super.key,
    required this.mentor,
  });

  final MentorResponseModel mentor;

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
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
            alignment: Alignment.center,
            child: mentor.pathPhoto != null
                ? Image.network(
                    mentor.pathPhoto!,
                    fit: BoxFit.fill,
                    height: 200.h,
                    width: double.infinity,
                  )
                : Image.asset(
                    'assets/images/mentor1.png',
                    fit: BoxFit.fill,
                    height: 200.h,
                    width: MediaQuery.of(context).size.width * 0.80,
                    //color: Theme.of(context).iconTheme.color,
                  ),
          ),
          verticalSpace(10),
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
                    '4 ${S.current.years}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                mentor.numberOfSession == null
                    ? 'New Mentor'
                    : '${mentor.numberOfSession} '
                        r'$'
                        ' /  ${S.current.session}',
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
                      text: '${mentor.numberOfSession} ${S.current.session}  ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: '(${mentor.numberOfSession} ${S.current.review})',
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
    );
  }
}
