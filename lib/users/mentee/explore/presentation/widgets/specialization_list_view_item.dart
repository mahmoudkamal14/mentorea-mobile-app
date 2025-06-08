import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/shared/authentication/data/models/fields/specialization_response_model.dart';

class SpecializationListViewItem extends StatelessWidget {
  const SpecializationListViewItem({
    super.key,
    required this.itemIndex,
    required this.specializationModel,
    required this.selectedIndex,
  });

  final int itemIndex;
  final int selectedIndex;

  final SpecializationResponseModel specializationModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: itemIndex == selectedIndex
            ? Colors.blue
            : Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(
          width: 1.3.w,
          color: itemIndex == selectedIndex
              ? Colors.blue
              : Theme.of(context).iconTheme.color!,
        ),
      ),
      child: Center(
        child: Text(
          specializationModel.name,
          style: itemIndex == selectedIndex
              ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  )
              : Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
