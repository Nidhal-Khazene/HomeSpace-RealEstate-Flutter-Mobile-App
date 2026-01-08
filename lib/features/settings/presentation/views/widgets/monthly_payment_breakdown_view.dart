import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_app_bar.dart';
import 'package:home_space/features/settings/presentation/views/widgets/pie_chart_view.dart';

class MonthlyPaymentBreakdownView extends StatelessWidget {
  const MonthlyPaymentBreakdownView({super.key});

  static const routeName = "MonthlyPaymentBreakdownView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(
            children: [
              const CustomAppBar(title: ""),
              const SizedBox(height: 53),
              Text("Monthy Payment Breakdown", style: AppStyles.bold16),
              const PieChartView(),
            ],
          ),
        ),
      ),
    );
  }
}
