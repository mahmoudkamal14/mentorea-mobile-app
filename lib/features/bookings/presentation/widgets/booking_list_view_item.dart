import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/features/bookings/data/model/session_response_model.dart';

class BookingListViewItem extends StatelessWidget {
  const BookingListViewItem({super.key, required this.sessionModel});

  final SessionResponseModel sessionModel;

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('👨‍🏫  ${S.current.mentor}: ${sessionModel.mentorName}',
              style: Theme.of(context).textTheme.bodyLarge),
          verticalSpace(10),
          Text('👨‍🎓  ${S.current.mentee}: ${sessionModel.menteeName}',
              style: Theme.of(context).textTheme.bodyLarge),
          verticalSpace(10),
          Text(
            '💬  Topic: ${sessionModel.notes}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          verticalSpace(10),
          Text(
            r'💰  Price: ' '${sessionModel.price} Pound',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          verticalSpace(4),
          ListTile(
            leading: Icon(
              IconlyLight.calendar,
              color: Theme.of(context).iconTheme.color,
            ),
            minLeadingWidth: 10,
            title: Text(
              "${sessionModel.startDate}    |   ⏰ ${sessionModel.startTime} ",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            subtitle: Text(
              'Duration: ${sessionModel.durationMinutes} Minutes',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
