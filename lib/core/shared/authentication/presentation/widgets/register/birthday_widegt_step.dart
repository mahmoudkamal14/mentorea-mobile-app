import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class BirthdayWidegtStep extends StatefulWidget {
  const BirthdayWidegtStep({super.key});

  @override
  State<BirthdayWidegtStep> createState() => _BirthdayWidegtStepState();
}

class _BirthdayWidegtStepState extends State<BirthdayWidegtStep> {
  final TextEditingController _birthdayController = TextEditingController();

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
                controller: _birthdayController,
                readOnly: true,
                hintText: '01-04-2003',
                prefixIcon: Icon(
                  Icons.date_range_outlined,
                  color: Theme.of(context).iconTheme.color,
                ),
                onChanged: (value) {
                  _selectDate();
                },
                validator: (value) {},
              ),
            ),
            horizontalSpace(20),
            GestureDetector(
              onTap: _selectDate,
              child: ContainerCardWidget(
                width: 60,
                child: Icon(
                  Icons.date_range_rounded,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _selectDate() async {
    var cubit = RegisterCubit.get(context);

    DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1980),
      lastDate: DateTime(2010),
      initialDate: DateTime(2003),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      _birthdayController.text = formattedDate;

      int day = pickedDate.day;
      int month = pickedDate.month;
      int year = pickedDate.year;

      setState(() {
        cubit.pirthDateDay = day;
        cubit.pirthDateMonth = month;
        cubit.pirthDateYear = year;
      });
    }
  }

  @override
  void dispose() {
    _birthdayController.dispose();
    super.dispose();
  }
}
