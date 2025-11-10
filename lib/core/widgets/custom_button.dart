import 'package:flutter/material.dart';
import 'package:home_space/core/utils/colors.dart';

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
        child: const Text(
          'Get Started',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white /* White-100 */,
            fontSize: 16,
            fontFamily: 'GT Walsheim Pro',
            fontWeight: FontWeight.w400,
            height: 1.67,
            letterSpacing: -0.50,
          ),
        ),
      ),
    );
  }
}
