import 'package:flutter/material.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.colorBackground,
    required this.textContent,
    this.textContentColor,
    this.borderColor,
    this.onTap,
  });
  final Color? colorBackground;
  final String textContent;
  final Color? textContentColor;
  final Color? borderColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? ColorsData.kPrimaryColor),
          borderRadius: BorderRadius.circular(100),
          color: colorBackground ?? ColorsData.kPrimaryColor,
        ),
        child: Text(
          textContent,
          textAlign: TextAlign.center,
          style: AppStyles.regular16.copyWith(
            color: textContentColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
