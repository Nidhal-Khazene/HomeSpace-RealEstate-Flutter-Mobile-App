import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/features/auth/presentation/views/widgets/reset_password_view.dart';

class TurnOnNotification extends StatelessWidget {
  const TurnOnNotification({super.key});

  static const String routeName = "TurnOnNotification";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 150),
              SizedBox(
                width: 278,
                child: Text(
                  "Turn on notifications ? ",
                  style: AppStyles.medium32,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Don’t miss important update and account activity",
                style: AppStyles.regular12.copyWith(
                  color: const Color(0xFF8C8B8B),
                ),
              ),
              const SizedBox(height: 112),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    ResetPasswordView.routeName,
                  );
                },
                child: const CustomButton(textContent: "Yes Notify"),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    ResetPasswordView.routeName,
                  );
                },
                child: CustomButton(
                  borderColor: ColorsData.kPrimaryColor,
                  textContentColor: ColorsData.kPrimaryColor,
                  textContent: "Skip",
                  colorBackground: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
