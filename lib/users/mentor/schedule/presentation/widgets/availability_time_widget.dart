// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mentorea_mobile_app/core/helper/functions/availability_time_has_conflict.dart';
import 'package:mentorea_mobile_app/core/helper/functions/format_time_availability.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/logic/schedule_cubit.dart';

class AvailabilityTimeWidegt extends StatelessWidget {
  AvailabilityTimeWidegt({
    super.key,
  });

  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var scheduleCubit = ScheduleCubit.get(context);
    final now = DateTime.now();
    DateTime dateTime =
        DateTime(now.year, now.month, now.day, now.hour, now.minute);
    return ContainerCardWidget(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Start Time',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    verticalSpace(10),
                    Builder(builder: (context) {
                      return AppTextFormField(
                        readOnly: true,
                        hintText: formatTimeAvailability(dateTime),
                        controller: startTimeController,
                        hintTextStyle: Theme.of(context).textTheme.bodyMedium,
                        suffixIcon: GestureDetector(
                          onTap: () async {
                            await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            ).then((selectedTime) {
                              if (selectedTime != null) {
                                final now = DateTime.now();
                                dateTime = DateTime(
                                  now.year,
                                  now.month,
                                  now.day,
                                  selectedTime.hour,
                                  selectedTime.minute,
                                );

                                scheduleCubit.startTime =
                                    DateFormat.Hm().format(dateTime);

                                startTimeController.text =
                                    formatTimeAvailability(dateTime);

                                log(scheduleCubit.startTime!);
                              }
                            });
                          },
                          child: Icon(
                            Icons.access_time_outlined,
                            color: Theme.of(context).iconTheme.color,
                            size: 24,
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
              horizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'End Time',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    verticalSpace(10),
                    AppTextFormField(
                      readOnly: true,
                      hintText: formatTimeAvailability(dateTime),
                      controller: endTimeController,
                      hintTextStyle: Theme.of(context).textTheme.bodyMedium,
                      suffixIcon: GestureDetector(
                        onTap: () async {
                          await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          ).then((selectedTime) {
                            if (selectedTime != null) {
                              final now = DateTime.now();
                              dateTime = DateTime(
                                now.year,
                                now.month,
                                now.day,
                                selectedTime.hour,
                                selectedTime.minute,
                              );

                              scheduleCubit.endTime =
                                  DateFormat.Hm().format(dateTime);

                              endTimeController.text =
                                  formatTimeAvailability(dateTime);

                              log(scheduleCubit.endTime!);
                            }
                          });
                        },
                        child: Icon(
                          Icons.access_time_outlined,
                          color: Theme.of(context).iconTheme.color,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(20),
          AppTextButton(
            textButton: 'Add Schedule',
            onPressed: () {
              bool x = isValidSlot(
                newDate: scheduleCubit.selectedDate!,
                newStartTime: scheduleCubit.startTime!,
                newEndTime: scheduleCubit.endTime!,
                existingSlots: scheduleCubit.mentorAvailabilityList,
              );
              log('isValidSlot: $x');
              // if (isValidSlot(
              //       newDate: scheduleCubit.selectedDate!,
              //       newStartTime: scheduleCubit.startTime!,
              //       newEndTime: scheduleCubit.endTime!,
              //       existingSlots: scheduleCubit.mentorAvailabilityList,
              //     ) &&
              //     !isInThePast(
              //       scheduleCubit.selectedDate!,
              //       scheduleCubit.startTime!,
              //     )) {
              //   showToast(
              //     msg: isArabic()
              //         ? 'يوجد تعارض بين المواعيد المحدد ومواعيد سابقة'
              //         : 'There is a conflict between the selected time and previous schedules',
              //     color: Colors.red,
              //   );
              // } else {
              //   print('No conflict, adding schedule');
              // }
            },
          ),
        ],
      ),
    );
  }
}
