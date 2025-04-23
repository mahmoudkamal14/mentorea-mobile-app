import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class BirthdayAndLocationStep extends StatelessWidget {
  const BirthdayAndLocationStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Birthday', style: Theme.of(context).textTheme.titleSmall),
        verticalSpace(4),
        Row(
          children: [
            Expanded(
              child: AppTextFormField(
                textInputType: TextInputType.datetime,
                hintText: '01-04-2003',
                prefixIcon: Icon(
                  Icons.date_range_outlined,
                  color: Theme.of(context).iconTheme.color,
                ),
                validator: (value) {},
              ),
            ),
            horizontalSpace(20),
            ContainerCardWidget(
              width: 60,
              child: GestureDetector(
                onTap: () {
                  showDatePicker(
                    context: context,
                    firstDate: DateTime(1980),
                    lastDate: DateTime(2010),
                    initialDate: DateTime(2003),
                    keyboardType: TextInputType.datetime,
                  );

                  // DateTime myDate = DateTime(2025, 4, 20);
                  // var result = splitDate(myDate);

                  // print("Year: ${result['year']}");
                  // print("Month: ${result['month']}");
                  // print("Day: ${result['day']}");
                },
                child: Icon(
                  Icons.date_range_rounded,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ),
          ],
        ),
        verticalSpace(12),
        Text('Location', style: Theme.of(context).textTheme.titleSmall),
        verticalSpace(4),
        Row(
          children: [
            Expanded(
              child: AppTextFormField(
                textInputType: TextInputType.name,
                hintText: 'Egypt',
                prefixIcon: Icon(
                  Icons.location_city,
                  color: Theme.of(context).iconTheme.color,
                ),
                validator: (value) {},
              ),
            ),
            horizontalSpace(20),
            ContainerCardWidget(
              width: 60,
              child: Icon(
                Icons.location_on_rounded,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Map<String, int> splitDate(DateTime date) {
    return {
      'year': date.year,
      'month': date.month,
      'day': date.day,
    };
  }
}
