import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartView extends StatefulWidget {
  const PieChartView({super.key});

  @override
  State<PieChartView> createState() => _PieChartViewState();
}

class _PieChartViewState extends State<PieChartView> {
  int currentSectionIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(pieTouchData: getPieTouchData());
  }

  PieTouchData getPieTouchData() {
    return PieTouchData(
      enabled: true,
      touchCallback:
          (FlTouchEvent flTouchEvent, PieTouchResponse? pieTouchResponse) {
            setState(() {
              currentSectionIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          },
    );
  }
}
