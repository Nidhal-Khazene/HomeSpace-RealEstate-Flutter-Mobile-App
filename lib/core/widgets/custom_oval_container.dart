import 'package:flutter/material.dart';
import 'package:home_space/core/utils/colors.dart';

import '../utils/styles.dart';

class CustomOvalContainer extends StatelessWidget {
  const CustomOvalContainer({
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
        height: 100,
        width: 100,
        decoration: ShapeDecoration(
          color: colorBackground ?? ColorsData.kSecondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(color: borderColor ?? ColorsData.kSecondaryColor),
          ),
        ),
        child: Center(
          child: Text(
            textContent,
            textAlign: TextAlign.center,
            style: AppStyles.medium16.copyWith(
              color: textContentColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
