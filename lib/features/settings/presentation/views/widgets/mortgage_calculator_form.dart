import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/widgets/custom_app_bar.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/core/widgets/custom_text_field.dart';

class MortgageCalculatorForm extends StatelessWidget {
  const MortgageCalculatorForm({super.key});

  static const routeName = "MortgageCalculatorForm";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(
            children: [
              CustomAppBar(title: "Mortgage Calculator"),
              SizedBox(height: 16),
              CustomTextField(textContent: "Home Price"),
              SizedBox(height: 12),
              CustomTextField(textContent: "Down payment"),
              SizedBox(height: 12),
              CustomTextField(textContent: "Loan term"),
              SizedBox(height: 12),
              CustomTextField(textContent: "Interest Rate"),
              SizedBox(height: 12),
              CustomTextField(textContent: "Zip code"),
              Flexible(child: SizedBox(height: 222)),
              CustomButton(textContent: "Continue"),
            ],
          ),
        ),
      ),
    );
  }
}
