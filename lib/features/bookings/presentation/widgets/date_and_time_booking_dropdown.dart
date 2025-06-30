import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/bookings/presentation/logic/booking_session_cubit.dart';
import 'package:mentorea_mobile_app/features/schedule/data/models/mentor_availability_response_model.dart';

class DateAndTimeBookingDropdown extends StatefulWidget {
  final List<MentorAvailabilityResponseModel> availabilityList;

  const DateAndTimeBookingDropdown({required this.availabilityList, super.key});

  @override
  State<DateAndTimeBookingDropdown> createState() =>
      _DateAndTimeBookingDropdownState();
}

class _DateAndTimeBookingDropdownState
    extends State<DateAndTimeBookingDropdown> {
  String? selectedDate;
  MentorAvailabilityResponseModel? selectedTime;

  @override
  Widget build(BuildContext context) {
    var cubit = BookingSessionCubit.get(context);
    List<String> uniqueDates =
        widget.availabilityList.map((a) => a.date).toSet().toList();
    List<MentorAvailabilityResponseModel> timesForSelectedDate = selectedDate ==
            null
        ? []
        : widget.availabilityList.where((a) => a.date == selectedDate).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Session Date', style: Theme.of(context).textTheme.bodyMedium),
        verticalSpace(12),
        DropdownButtonFormField<String>(
          dropdownColor: Theme.of(context).scaffoldBackgroundColor,
          iconDisabledColor: Theme.of(context).iconTheme.color,
          iconEnabledColor: Theme.of(context).iconTheme.color,
          decoration: InputDecoration(
            labelText: 'Choose a Date',
            labelStyle: Theme.of(context).textTheme.bodyMedium,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
          value: selectedDate,
          items: uniqueDates.map((date) {
            return DropdownMenuItem(
              value: date,
              child: Text(date, style: Theme.of(context).textTheme.bodyMedium),
            );
          }).toList(),
          onChanged: (String? newDate) {
            setState(() {
              selectedDate = newDate;
              selectedTime = null;
              cubit.startDateController.text = newDate!;
            });
          },
        ),
        verticalSpace(20),
        Text('Start Time', style: Theme.of(context).textTheme.bodyMedium),
        verticalSpace(12),
        DropdownButtonFormField<MentorAvailabilityResponseModel>(
          iconDisabledColor: Theme.of(context).iconTheme.color,
          iconEnabledColor: Theme.of(context).iconTheme.color,
          dropdownColor: Theme.of(context).scaffoldBackgroundColor,
          decoration: InputDecoration(
            labelText: 'Choose a time',
            labelStyle: Theme.of(context).textTheme.bodyMedium,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
          value: selectedTime,
          items: timesForSelectedDate.map((availability) {
            return DropdownMenuItem(
              value: availability,
              child: Text(
                availability.startTime,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            );
          }).toList(),
          onChanged: (MentorAvailabilityResponseModel? newTime) {
            setState(() {
              selectedTime = newTime;
              cubit.startTimeController.text = newTime!.startTime;
            });
          },
        ),
      ],
    );
  }
}
