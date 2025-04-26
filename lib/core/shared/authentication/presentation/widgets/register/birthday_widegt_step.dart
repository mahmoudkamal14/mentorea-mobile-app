import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class BirthdayWidegtStep extends StatefulWidget {
  const BirthdayWidegtStep({super.key});

  @override
  State<BirthdayWidegtStep> createState() => _BirthdayWidegtStepState();
}

class _BirthdayWidegtStepState extends State<BirthdayWidegtStep> {
  final TextEditingController _birthdayController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  int? selectedDay;
  int? selectedMonth;
  int? selectedYear;

  Future<void> _selectDate() async {
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
        selectedDay = day;
        selectedMonth = month;
        selectedYear = year;
      });
    }
  }

  @override
  void dispose() {
    _birthdayController.dispose();
    _locationController.dispose();
    super.dispose();
  }

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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return isArabic() == true
                        ? 'من فضلك اختر تاريخ ميلادك'
                        : 'Please select your birthday';
                  }
                  return null;
                },
              ),
            ),
            horizontalSpace(20),
            ContainerCardWidget(
              width: 60,
              child: GestureDetector(
                onTap: _selectDate,
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
}
