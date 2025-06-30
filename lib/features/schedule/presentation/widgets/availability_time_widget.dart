// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mentorea_mobile_app/core/helper/functions/format_time_availability.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/features/schedule/presentation/logic/schedule_cubit.dart';
import 'package:mentorea_mobile_app/features/schedule/presentation/logic/schedule_state.dart';

class AvailabilityTimeWidegt extends StatelessWidget {
  AvailabilityTimeWidegt({super.key, this.textButton});
  final String? textButton;

  TextEditingController startTimeController = TextEditingController();

  TextEditingController endTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var scheduleCubit = ScheduleCubit.get(context);
    DateTime dateTime = DateTime(2025, 6, 21, 1, 0);
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

                                scheduleCubit.startTimeController.text =
                                    DateFormat('HH:mm').format(dateTime);

                                startTimeController.text =
                                    formatTimeAvailability(dateTime);
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
                              scheduleCubit.endTimeController.text =
                                  DateFormat('HH:mm')
                                      .format(dateTime)
                                      .toString();

                              endTimeController.text =
                                  formatTimeAvailability(dateTime);
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
          BlocBuilder<ScheduleCubit, ScheduleState>(
            builder: (context, state) {
              return AppTextButton(
                textButton: textButton ?? 'Add Schedule',
                isLoading:
                    state is CreateAvailabilityLoadingState ? true : false,
                onPressed: () {
                  scheduleCubit.addMentorAvailability();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
