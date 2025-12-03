import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      selectedDayPredicate: (day) => isSameDay(day, today),
      rowHeight: 40,
      availableGestures: AvailableGestures.none,
      headerVisible: false,
      focusedDay: today,
      firstDay: DateTime.now(),
      lastDay: DateTime.utc(2026),
      onDaySelected: _onDaySelected,
    );
  }
}
