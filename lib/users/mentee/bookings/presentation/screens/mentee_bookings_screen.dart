import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/users/mentee/bookings/presentation/widgets/booking_list_view_item.dart';

class MenteeBookingsScreen extends StatelessWidget {
  const MenteeBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookingListViewItem(
          menteeName: 'Mahmoud Fawzy',
          menteeImage: 'assets/images/daif.png',
          sessionDate: 'Sun 2/9/2025',
          sessionTime: '09:45 PM',
          sessionType: 'Back-End Development',
          status: 'Confirmed',
          onStartSession: () {},
          onMessage: () {},
          onCancel: () {},
        ),
      ],
    );
  }
}
