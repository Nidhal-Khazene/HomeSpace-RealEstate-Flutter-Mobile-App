import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_app_bar.dart';

class HomeNotificationView extends StatelessWidget {
  const HomeNotificationView({super.key});

  static const routeName = "HomeNotificationView";

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
                title: "Notifications",
                textStyle: AppStyles.bold16,
                widthFromBackButton: 82,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
