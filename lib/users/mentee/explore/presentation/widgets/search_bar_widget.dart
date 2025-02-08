import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            textInputType: TextInputType.text,
            hintText: 'Search by name, role',
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Theme.of(context).iconTheme.color!,
            ),
            validator: (p0) {},
          ),
        ),
        horizontalSpace(10),
        Container(
          width: 74,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Theme.of(context).iconTheme.color!,
            ),
          ),
          child: Icon(
            Icons.filter_list,
            color: Theme.of(context).iconTheme.color!,
          ),
        ),
      ],
    );
  }
}
