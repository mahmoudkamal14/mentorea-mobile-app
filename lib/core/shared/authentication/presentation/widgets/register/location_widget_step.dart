import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/datasource/governorates_list.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/register/register_cubit.dart';

class LocationWidgetStep extends StatefulWidget {
  const LocationWidgetStep({super.key});

  @override
  State<LocationWidgetStep> createState() => _LocationWidgetStepState();
}

class _LocationWidgetStepState extends State<LocationWidgetStep> {
  final List<String> governorates =
      isArabic() == true ? governoratesArabic : governoratesEnglish;

  String? selectedGovernorate;

  @override
  Widget build(BuildContext context) {
    var cubit = RegisterCubit.get(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Location', style: Theme.of(context).textTheme.titleSmall),
        verticalSpace(4),
        DropdownButtonFormField<String>(
          alignment: AlignmentDirectional.topStart,
          style: Theme.of(context).textTheme.bodyMedium,
          dropdownColor: Theme.of(context).scaffoldBackgroundColor,
          decoration: InputDecoration(
            hintText: isArabic() ? 'اختر المحافظة' : 'Select the governorate',
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            contentPadding:
                EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            iconColor: Theme.of(context).iconTheme.color,
            prefixIcon: Icon(
              Icons.location_on_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          items: governorates.map((String gov) {
            return DropdownMenuItem<String>(
              alignment: AlignmentDirectional.topCenter,
              value: gov,
              child: Text(gov),
            );
          }).toList(),
          value: selectedGovernorate,
          onChanged: (value) {
            setState(() {
              selectedGovernorate = value;
              cubit.locationUser = selectedGovernorate!;
            });
          },
          validator: (value) => value == null
              ? isArabic()
                  ? 'من فضلك اختر محافظة'
                  : 'Please select a governorate'
              : null,
        ),
      ],
    );
  }
}
