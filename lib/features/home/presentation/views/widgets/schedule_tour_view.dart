import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_app_bar.dart';

class ScheduleTourView extends StatelessWidget {
  const ScheduleTourView({super.key});

  static const routeName = "ScheduleTourView";

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
            ],
          ),
        ),
      ),
    );
  }
}
