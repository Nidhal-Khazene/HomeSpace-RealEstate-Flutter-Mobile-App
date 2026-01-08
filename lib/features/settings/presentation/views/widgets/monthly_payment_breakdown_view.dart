import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/widgets/custom_app_bar.dart';

class MonthlyPaymentBreakdownView extends StatelessWidget {
  const MonthlyPaymentBreakdownView({super.key});
  static const routeName = "MonthlyPaymentBreakdownView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(children: [CustomAppBar(title: "")]),
        ),
      ),
    );
  }
}
