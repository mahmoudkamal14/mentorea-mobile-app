import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/logic/booking_session_cubit.dart';

class DurationMinutesAndWaitingTimeWidget extends StatelessWidget {
  const DurationMinutesAndWaitingTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = BookingSessionCubit.get(context);
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Duration Minutes',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            verticalSpace(12),
            AppTextFormField(
              textInputType: TextInputType.number,
              controller: cubit.durationMinutesController,
              hintText: 'Num of Minutes',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the number of minutes';
                }

                final parsedValue = int.tryParse(value);
                if (parsedValue == null) {
                  return 'Please enter a valid number';
                }

                if (parsedValue >= 60) {
                  return 'Duration must be more than 60 minutes';
                }

                return null;
              },
            ),
          ],
        )),
        horizontalSpace(12),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Waiting Time',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            verticalSpace(12),
            AppTextFormField(
              textInputType: TextInputType.number,
              controller: cubit.waitingTimeController,
              hintText: 'Num of Minutes',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the number of minutes';
                }

                final parsedValue = int.tryParse(value);
                if (parsedValue == null) {
                  return 'Please enter a valid number';
                }

                if (parsedValue >= 15 || parsedValue <= 15) {
                  return 'Duration must be between 5 and 15 minutes';
                }

                return null;
              },
            ),
          ],
        )),
      ],
    );
  }
}
