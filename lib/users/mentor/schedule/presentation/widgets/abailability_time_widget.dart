import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class AvailabilityTimeWidegt extends StatelessWidget {
  const AvailabilityTimeWidegt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                    AppTextFormField(
                      readOnly: true,
                      hintText: '09.30 Pm',
                      hintTextStyle: Theme.of(context).textTheme.bodyMedium,
                      suffixIcon: GestureDetector(
                        onTap: () {},
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
                      hintText: '11.00 Pm',
                      hintTextStyle: Theme.of(context).textTheme.bodyMedium,
                      suffixIcon: GestureDetector(
                        onTap: () {},
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
              // Navigate To Create Mentor Availability
              //context.navigateTo(Routes.createMentorAvailability);
            },
          ),
        ],
      ),
    );
  }
}
