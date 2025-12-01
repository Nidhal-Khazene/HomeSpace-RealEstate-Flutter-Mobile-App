import 'package:flutter/material.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_go_back_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.textStyle,
    this.widthFromBackButton,
  });
  final String title;
  final TextStyle? textStyle;
  final double? widthFromBackButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomGoBackButton(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(width: widthFromBackButton ?? 69),
        Text(title, style: textStyle ?? AppStyles.medium16),
      ],
    );
  }
}
