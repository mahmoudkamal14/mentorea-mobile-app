import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/navigate_to.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/features/bookings/presentation/screens/book_session_screen.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentor_response_model.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentor%20profile/sessions/community_statistics_widget.dart';
import 'package:mentorea_mobile_app/features/schedule/presentation/logic/schedule_cubit.dart';
import 'package:mentorea_mobile_app/features/schedule/presentation/widgets/mentor_availability_list_tile.dart';

class MentorTabBarSession extends StatelessWidget {
  const MentorTabBarSession({super.key, required this.mentor});

  final MentorResponseModel mentor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CommunityStatisticsWidget(mentor: mentor),
          verticalSpace(30),
          const MentorAvailabilityListTile(title: 'Mentor Availability'),
          verticalSpace(30),
          AppTextButton(
            textButton: 'Book Session',
            onPressed: () {
              navigateTo(
                context,
                screen: BookSessionScreen(
                  mentorAvailabilityList:
                      ScheduleCubit.get(context).mentorAvailabilityList,
                  mentor: mentor,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
