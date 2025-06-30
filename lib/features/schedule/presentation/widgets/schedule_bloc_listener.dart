import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/features/schedule/presentation/logic/schedule_cubit.dart';
import 'package:mentorea_mobile_app/features/schedule/presentation/logic/schedule_state.dart';

class ScheduleBlocListener extends StatelessWidget {
  const ScheduleBlocListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ScheduleCubit, ScheduleState>(
      child: child,
      listener: (context, state) {
        if (state is CreateAvailabilitySuccessState) {
          showToast(
            msg: isArabic()
                ? 'تم تأكيد الموعد بنجاح. شكرًا لاستخدامك خدمتنا'
                : 'Your appointment has been successfully confirmed. Thank you for using our service',
            color: Colors.green,
          );
        } else if (state is CreateAvailabilitySuccessState) {
          showToast(
            msg: isArabic()
                ? 'يرجى التحقق من المواعيد المحجوزة مسبقًا ثم المحاولة مرة أخرى'
                : 'Please check the previously booked appointments and try again',
            color: Colors.red,
          );
        } else if (state is UpdateAvailabilitySuccessState) {
          showToast(
            msg: isArabic()
                ? 'تم تحديث الموعد بنجاح'
                : 'The appointment has been updated successfully',
            color: Colors.green,
          );
        } else if (state is UpdateAvailabilityErrorState) {
          showToast(
            msg: isArabic()
                ? 'حدث خطأ أثناء تحديث الموعد. الرجاء المحاولة مرة أخرى'
                : 'Failed to update the appointment. Please try again',
            color: Colors.red,
          );
        } else if (state is DeleteAvailabilitySuccessState) {
          showToast(
            msg: isArabic()
                ? 'تم حذف الموعد بنجاح'
                : 'The appointment has been deleted  successfully',
            color: Colors.green,
          );
        } else if (state is DeleteAvailabilityErrorState) {
          showToast(
            msg: isArabic()
                ? 'حدث خطأ أثناء حذف الموعد. الرجاء المحاولة مرة أخرى'
                : 'Failed to delete the appointment. Please try again',
            color: Colors.red,
          );
        }
        onRefresh(context);
      },
    );
  }

  Future<void> onRefresh(context) async {
    ScheduleCubit.get(context).getMentorAvailability(
      mentorId: getCachedUserData()!.id!,
    );
  }
}
