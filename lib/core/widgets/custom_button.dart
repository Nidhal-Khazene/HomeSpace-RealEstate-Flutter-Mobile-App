import 'package:flutter/material.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.colorBackground});
  final Color? colorBackground;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: colorBackground ?? ColorsData.kPrimaryColor,
        ),
        child: Text(
          'Get Started',
          textAlign: TextAlign.center,
          style: AppStyles.regular16.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
