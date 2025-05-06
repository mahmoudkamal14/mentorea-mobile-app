import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/fields/specialization_response_model.dart';

class SpecializationListViewItem extends StatelessWidget {
  const SpecializationListViewItem({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.specializationModel,
  });

  final int index;
  final int selectedIndex;
  final SpecializationResponseModel specializationModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(
          width: 1.3.w,
          color: index == selectedIndex
              ? const Color(0xFF103A69)
              : Theme.of(context).iconTheme.color!,
        ),
      ),
      child: Center(
        child: Text(
          specializationModel.name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
