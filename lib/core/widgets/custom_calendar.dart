import 'package:flutter/material.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({super.key});

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, _) {
    setState(() {
      today = day;
    });
  }

  bool _isSameWeek(DateTime day1, DateTime day2) {
    DateTime weekStart(DateTime d) =>
        d.subtract(Duration(days: d.weekday - DateTime.monday));

    final start1 = weekStart(day1);
    final start2 = weekStart(day2);

    return isSameDay(start1, start2);
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      selectedDayPredicate: (day) => isSameDay(day, today),
      availableGestures: AvailableGestures.none,
      headerVisible: false,
      focusedDay: today,
      firstDay: DateTime.now(),
      lastDay: DateTime.utc(2026),
      onDaySelected: _onDaySelected,
      calendarStyle: buildCalendarStyle(),

      calendarBuilders: buildCalendarBuilders(),
    );
  }

  CalendarBuilders<dynamic> buildCalendarBuilders() {
    return CalendarBuilders(
      dowBuilder: (context, day) {
        List<String> letters = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
        return Center(
          child: Text(
            letters[day.weekday - 1],
            style: AppStyles.bold16.copyWith(color: ColorsData.kSecondaryColor),
          ),
        );
      },
      defaultBuilder: (context, day, focusedDay) {
        if (_isSameWeek(day, today) && !isSameDay(day, today)) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              '${day.day}',
              style: AppStyles.regular16.copyWith(
                color: ColorsData.kSecondaryColor,
              ),
            ),
          );
        }

        return null;
      },
      todayBuilder: (context, day, _) {
        return Container(
          decoration: BoxDecoration(
            color: ColorsData.kPrimaryColor,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            '${day.day}',
            style: AppStyles.medium16.copyWith(color: Colors.white),
          ),
        );
      },
      selectedBuilder: (context, day, focusedDay) {
        return Container(
          decoration: BoxDecoration(
            color: ColorsData.kSecondaryColor,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            '${day.day}',
            style: AppStyles.medium16.copyWith(color: Colors.white),
          ),
        );
      },
    );
  }

  CalendarStyle buildCalendarStyle() {
    return CalendarStyle(
      outsideDaysVisible: false,
      selectedTextStyle: AppStyles.medium16.copyWith(color: Colors.white),
      disabledTextStyle: AppStyles.regular16.copyWith(
        color: ColorsData.kFontSecondaryColor,
      ),
      defaultTextStyle: AppStyles.regular16.copyWith(
        color: ColorsData.kFontSecondaryColor,
      ),
      todayTextStyle: AppStyles.medium16.copyWith(color: Colors.white),
    );
  }
}
