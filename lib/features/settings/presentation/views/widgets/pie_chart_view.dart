import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartView extends StatelessWidget {
  const PieChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        // read about it in the PieChartData section
      ),
      duration: const Duration(milliseconds: 150), // Optional
      curve: Curves.linear, // Optional
    );
    ;
  }
}
