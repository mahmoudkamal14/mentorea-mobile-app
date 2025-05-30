import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';

class CreateMentorAvailability extends StatelessWidget {
  const CreateMentorAvailability({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppbarIcon(),
        title: const Text('Available Time Setup'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.list_alt_outlined,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Be Productive, Add Schedule',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              verticalSpace(40),
              Text('Date', style: Theme.of(context).textTheme.bodyMedium),
              verticalSpace(10),
              Container(
                height: 64,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(
                      width: 1,
                      color: Theme.of(context).iconTheme.color!,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Thursday, 30th of January 2022',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    horizontalSpace(16),
                    Icon(
                      Icons.date_range_outlined,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ],
                ),
              ),
              verticalSpace(30),
              Row(
                children: [
                  const Expanded(child: AppTextFormField()),
                  horizontalSpace(16),
                  const Expanded(child: AppTextFormField()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
