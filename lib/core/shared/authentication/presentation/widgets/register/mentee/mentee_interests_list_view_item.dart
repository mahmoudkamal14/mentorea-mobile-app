import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/models/fields/field_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/register/register_cubit.dart';

class MenteeInterestsListViewItem extends StatefulWidget {
  const MenteeInterestsListViewItem({
    super.key,
    required this.fieldItem,
  });

  final FieldResponseModel fieldItem;

  @override
  State<MenteeInterestsListViewItem> createState() =>
      _MenteeInterestsListViewItemState();
}

class _MenteeInterestsListViewItemState
    extends State<MenteeInterestsListViewItem> {
  List<String> selectedInterests = [];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    // var selectedInterests = RegisterCubit.get(context).fieldInterests;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.fieldItem.specializationName,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          height: 130.h,
          child: ListView.builder(
            itemCount: widget.fieldItem.fields.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final interest = widget.fieldItem.fields[index];
              final isSelected = selectedInterests.contains(interest.id);

              return SizedBox(
                height: 50.h,
                child: CheckboxListTile(
                  value: isSelected,
                  title: Text(
                    interest.name,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  onChanged: (value) {
                    setState(() {
                      if (value == true) {
                        selectedInterests.add(interest.id);
                      } else {
                        selectedInterests.remove(interest.id);
                      }
                      log('Selected Interests: $selectedInterests');
                      RegisterCubit.get(context).fieldInterests =
                          selectedInterests;
                      log('Selected Interests: ${RegisterCubit.get(context).fieldInterests}');
                    });
                  },
                ),
              );
            },
          ),
        ),
        verticalSpace(16),
      ],
    );
  }
}
