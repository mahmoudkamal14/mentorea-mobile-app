import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/logic/booking_session_cubit.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/logic/booking_session_state.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/widgets/add_session_notes_widget.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/widgets/date_and_time_booking_dropdown.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/widgets/duration_minutes_and_waiting_time_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentor_response_model.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/data/models/mentor_availability_response_model.dart';

class BookSessionScreen extends StatelessWidget {
  const BookSessionScreen({
    super.key,
    required this.mentorAvailabilityList,
    required this.mentor,
  });

  final List<MentorAvailabilityResponseModel> mentorAvailabilityList;
  final MentorResponseModel mentor;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BookingSessionCubit>(),
      child: BlocListener<BookingSessionCubit, BookingSessionState>(
        listener: (context, state) {
          if (state is CreateSessionSuccessState) {
            context.pop();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            elevation: 0,
            leading: const AppbarIcon(),
            centerTitle: true,
            title: Text(
              'Book Session',
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DateAndTimeBookingDropdown(
                      availabilityList: mentorAvailabilityList,
                    ),
                    verticalSpace(20),
                    const DurationMinutesAndWaitingTimeWidget(),
                    verticalSpace(20),
                    const AddSessionNotesWidget(),
                    verticalSpace(40),
                    BlocBuilder<BookingSessionCubit, BookingSessionState>(
                      builder: (context, state) {
                        var cubit = BookingSessionCubit.get(context);
                        return AppTextButton(
                          textButton: 'Book a Session',
                          isLoading:
                              state is CreateSessionLoadingState ? true : false,
                          onPressed: () {
                            if (cubit.formKey.currentState!.validate()) {
                              cubit.createSession(
                                mentorId: mentor.id!,
                                menteeId: getCachedUserData()!.id,
                              );
                            }
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
