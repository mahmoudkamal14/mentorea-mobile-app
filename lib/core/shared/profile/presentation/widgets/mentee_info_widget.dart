import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/core/shared/profile/data/model/mentee_profile_response_model.dart';

class MenteeInfoWidget extends StatelessWidget {
  const MenteeInfoWidget({super.key, required this.menteeProfileModel});
  final MenteeProfileResponseModel menteeProfileModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        spacing: 20.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerCardWidget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('About', style: Theme.of(context).textTheme.bodyMedium),
                verticalSpace(20),
                Text(
                  menteeProfileModel.about!,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          ContainerCardWidget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Location', style: Theme.of(context).textTheme.bodyMedium),
                verticalSpace(12),
                AppTextFormField(
                  readOnly: true,
                  hintText: menteeProfileModel.location!,
                  hintTextStyle: Theme.of(context).textTheme.titleSmall,
                  prefixIcon: Icon(
                    Icons.location_on_outlined,
                    size: 26.sp,
                    color: Theme.of(context).iconTheme.color,
                  ),
                )
              ],
            ),
          ),
          ContainerCardWidget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Birth Date',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                verticalSpace(12),
                AppTextFormField(
                  readOnly: true,
                  hintText: DateFormat.yMMMMd().format(
                      DateTime.parse(menteeProfileModel.pirthDate!.toString())),
                  hintTextStyle: Theme.of(context).textTheme.titleSmall,
                  prefixIcon: Icon(
                    Icons.calendar_today_outlined,
                    size: 26.sp,
                    color: Theme.of(context).iconTheme.color,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
