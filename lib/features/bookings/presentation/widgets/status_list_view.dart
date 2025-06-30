import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/features/bookings/presentation/logic/session/session_cubit.dart';
import 'package:mentorea_mobile_app/features/bookings/presentation/widgets/status_list_view_item.dart';

class StatusListView extends StatefulWidget {
  const StatusListView({super.key, required this.statusList});

  final List<String> statusList;

  @override
  State<StatusListView> createState() => _StatusListViewState();
}

class _StatusListViewState extends State<StatusListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        itemCount: widget.statusList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 8.w),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              getSessionListByStatus(context);
            },
            child: StatusListViewItem(
              itemIndex: index,
              status: widget.statusList[index],
              selectedIndex: selectedIndex,
            ),
          ),
        ),
      ),
    );
  }

  void getSessionListByStatus(BuildContext context) {
    if (selectedIndex == 0) {
      SessionCubit.get(context).getAllSessionsByUser(status: 'pending');
    } else if (selectedIndex == 1) {
      SessionCubit.get(context).getAllSessionsByUser(status: 'rejected');
    } else if (selectedIndex == 2) {
      SessionCubit.get(context)
          .getAllSessionsByUser(status: 'awaiting_payment');
    } else if (selectedIndex == 3) {
      SessionCubit.get(context).getAllSessionsByUser(status: 'accepted');
    } else if (selectedIndex == 4) {
      SessionCubit.get(context).getAllSessionsByUser(status: 'completed');
    } else if (selectedIndex == 5) {
      SessionCubit.get(context).getAllSessionsByUser(status: 'cancelled');
    } else if (selectedIndex == 6) {
      SessionCubit.get(context).getAllSessionsByUser(status: 'expired');
    } else if (selectedIndex == 7) {
      SessionCubit.get(context)
          .getAllSessionsByUser(status: 'awaiting_feedback');
    }
  }
}
