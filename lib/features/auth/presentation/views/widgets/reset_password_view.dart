import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_arrow_back_button.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/core/widgets/custom_text_field.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  static const String routeName = "ResetPasswordView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomArrowBackButton(),
              const SizedBox(height: 35),
              Text("Reset Password", style: AppStyles.medium32),
              const SizedBox(height: 33),
              const CustomTextField(textContent: "Enter Email Address"),
              const SizedBox(height: 12),
              const CustomButton(textContent: "Continue"),
            ],
          ),
        ),
      ),
    );
  }
}
