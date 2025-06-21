import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/logic/schedule_cubit.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/logic/schedule_state.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/widgets/availability_time_widget.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/presentation/widgets/table_calendar_widget.dart';

class MentorAvailabilityListTile extends StatelessWidget {
  const MentorAvailabilityListTile({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleCubit, ScheduleState>(
      builder: (context, state) {
        var availabilityList =
            ScheduleCubit.get(context).mentorAvailabilityList;
        return ContainerCardWidget(
          child: ExpansionTile(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            iconColor: Theme.of(context).iconTheme.color,
            childrenPadding: EdgeInsets.only(bottom: 8.h),
            tilePadding: EdgeInsets.only(bottom: 8.h),
            children: availabilityList.map((slot) {
              return GestureDetector(
                onTap: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.noHeader,
                    customHeader: SvgPicture.asset(
                      'assets/icons/category-2.svg',
                      color: Theme.of(context).iconTheme.color,
                      width: 50,
                    ),
                    animType: AnimType.rightSlide,
                    title: isArabic() ? 'اختر إجراءً' : 'Select an option',
                    desc: isArabic()
                        ? 'هل ترغب في تعديل أو حذف هذا الموعد؟'
                        : 'What would you like to do with this time slot?',
                    reverseBtnOrder: true,
                    btnCancelText: isArabic() ? 'حذف' : 'Delete',
                    btnOkText: isArabic() ? 'تحديث' : 'Update',
                    buttonsTextStyle:
                        TextStyle(fontSize: 20.sp, color: Colors.white),
                    btnCancelOnPress: () {
                      ScheduleCubit.get(context)
                          .deleteMentorAvailability(availabilityId: slot.id);
                    },
                    btnOkOnPress: () {
                      showBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            width: double.infinity,
                            color: Theme.of(context).scaffoldBackgroundColor,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 230.h,
                                  child: const TableCalendarWidget(),
                                ),
                                verticalSpace(20),
                                AvailabilityTimeWidegt(
                                  textButton: isArabic()
                                      ? 'تحديث الموعد'
                                      : 'Update Schedule',
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ).show();
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: ContainerCardWidget(
                    child: ListTile(
                      leading: Icon(
                        Icons.access_time,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Date: ${slot.date}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          verticalSpace(8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Start: ${slot.startTime}',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Text(
                                'End: ${slot.endTime}',
                                style: Theme.of(context).textTheme.titleSmall,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
