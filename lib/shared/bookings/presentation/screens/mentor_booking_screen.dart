import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/widgets/mentee_booking_list_view.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/widgets/status_list_view.dart';

class MenteeBookingsScreen extends StatelessWidget {
  const MenteeBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> statusList = [
      'Pendding',
      'Rejected',
      'Awaiting Payment',
      'Accepted',
      'Completed',
      'Cancelled',
      'Expired',
      'Awaiting Feedback',
    ];
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: StatusListView(statusList: statusList)),
        SliverToBoxAdapter(child: verticalSpace(20)),
        const SliverToBoxAdapter(child: MenteeBookingListView()),
      ],
    );
  }
}
