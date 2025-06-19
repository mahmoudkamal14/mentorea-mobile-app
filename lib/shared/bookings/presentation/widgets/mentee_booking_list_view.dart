import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/logic/session/session_cubit.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/logic/session/session_state.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/widgets/booking_list_view_item.dart';
import 'package:mentorea_mobile_app/shared/bookings/presentation/widgets/session_service.dart';

class MenteeBookingListView extends StatelessWidget {
  const MenteeBookingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, state) {
        var sessionList = SessionCubit.get(context).sessionList;
        return SizedBox(
          height: 600,
          child: ListView.builder(
            itemCount: sessionList.isEmpty ? 0 : sessionList.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: BlocListener<SessionCubit, SessionState>(
                listener: (context, state) async {
                  if (state is MarkSessionAttendedByOnePartySuccessState) {
                    await SessionService.join(
                      roomName: sessionList[index].id!,
                      userName: getCachedUserData()!.name,
                      email: getCachedUserData()!.email,
                    );
                  } else if (state is MarkSessionAttendedByOnePartyErrorState) {
                    showToast(
                      msg: isArabic()
                          ? 'لا يمكنك الانضمام إلى الجلسة في الوقت الحالي. يرجى المحاولة لاحقًا'
                          : 'You can not join the session at the moment. Please try again later.',
                      color: Colors.red,
                    );
                  }
                },
                child: GestureDetector(
                  onTap: () {
                    if (sessionList[index].status == 'pending' ||
                        sessionList[index].status == 'awaiting_payment' ||
                        sessionList[index].status == 'accepted') {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.question,
                        customHeader: Icon(
                          Icons.cancel_rounded,
                          color: Theme.of(context).iconTheme.color,
                          size: 60,
                        ),
                        animType: AnimType.rightSlide,
                        title: titleAwesomeDialog(sessionList[index].status!),
                        reverseBtnOrder: true,
                        btnCancelText: S.current.cancel,
                        btnOkText: S.current.Continue,
                        buttonsTextStyle:
                            const TextStyle(fontSize: 20, color: Colors.white),
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {
                          acceptAwesomeDialog(
                            sessionList[index].status!,
                            context,
                            sessionList[index].id!,
                          );
                        },
                      ).show();
                    }
                  },
                  child: BookingListViewItem(sessionModel: sessionList[index]),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String titleAwesomeDialog(String status) {
    if (status == 'pending') {
      return isArabic()
          ? 'هل تريد إلغاء الجلسة؟'
          : 'Do you want to cancel the session?';
    } else if (status == 'awaiting_payment') {
      return isArabic()
          ? 'هل ترغب في دفع تكلفة الجلسة الآن؟'
          : 'Do you want to pay for the session now?';
    } else {
      return isArabic()
          ? 'هل تريد الانضمام إلى الجلسة الآن؟'
          : 'Do you want to join the session now?';
    }
  }

  void acceptAwesomeDialog(String status, context, sessionId) {
    if (status == 'pending') {
      SessionCubit.get(context).cancelSession(sessionId: sessionId);
    } else if (status == 'awaiting_payment') {
    } else {
      SessionCubit.get(context)
          .markSessionAttendedByOneParty(sessionId: sessionId);
    }
  }
}
