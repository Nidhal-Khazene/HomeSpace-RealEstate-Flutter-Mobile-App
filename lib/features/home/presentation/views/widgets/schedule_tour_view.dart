import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_app_bar.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/features/home/presentation/views/widgets/select_time_choice_chip_list_view.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleTourView extends StatefulWidget {
  const ScheduleTourView({super.key});

  static const routeName = "ScheduleTourView";

  @override
  State<ScheduleTourView> createState() => _ScheduleTourViewState();
}

class _ScheduleTourViewState extends State<ScheduleTourView> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, _) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: "Schedule Tour",
                widthFromBackButton: 77,
                textStyle: AppStyles.medium16,
              ),
              const SizedBox(height: 32),
              Text("Select date", style: AppStyles.medium16),
              const SizedBox(height: 16),
              TableCalendar(
                selectedDayPredicate: (day) => isSameDay(day, today),
                rowHeight: 40,
                availableGestures: AvailableGestures.none,
                headerVisible: false,
                focusedDay: today,
                firstDay: DateTime.now(),
                lastDay: DateTime.utc(2026),
                onDaySelected: _onDaySelected,
              ),
              const SizedBox(height: 48),
              Text("Select Time", style: AppStyles.medium16),
              const SizedBox(height: 24),
              const SelectTimeChoiceChipListView(),
              const Flexible(child: SizedBox(height: 134)),
              const CustomButton(textContent: "Schedule"),
            ],
          ),
        ),
      ),
    );
  }
}
