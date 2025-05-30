import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarWidget extends StatefulWidget {
  const TableCalendarWidget({super.key});

  @override
  State<TableCalendarWidget> createState() => _TableCalendarWidgetState();
}

class _TableCalendarWidgetState extends State<TableCalendarWidget> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h),
            decoration: BoxDecoration(
              color: Theme.of(context).appBarTheme.backgroundColor,
              shape: BoxShape.rectangle,
              // // color: Colors.grey[900],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TableCalendar(
                  firstDay: DateTime.utc(2025, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                  calendarFormat: CalendarFormat.week,
                  startingDayOfWeek: StartingDayOfWeek.sunday,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    leftChevronIcon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    rightChevronIcon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    titleTextStyle: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                  daysOfWeekHeight: 52.h,
                  calendarStyle: CalendarStyle(
                    defaultTextStyle: const TextStyle(color: Colors.white),
                    weekendTextStyle: const TextStyle(color: Colors.white),
                    todayDecoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    selectedTextStyle: const TextStyle(color: Colors.black),
                    todayTextStyle: const TextStyle(color: Colors.white),
                    outsideDaysVisible: false,
                  ),
                  daysOfWeekStyle: const DaysOfWeekStyle(
                    decoration: BoxDecoration(),
                    weekdayStyle: TextStyle(
                      color: Colors.white,
                      height: 0,
                    ),
                    weekendStyle: TextStyle(color: Colors.white),
                  ),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                    // print(DateFormat.yMMMMd().format(_selectedDay!));
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
