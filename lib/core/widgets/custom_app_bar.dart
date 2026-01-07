import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomGoBackButton(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Text(title, style: textStyle ?? AppStyles.medium16),
        Flexible(
          child: SizedBox(
            width:
                (MediaQuery.sizeOf(context).width / 4) - kHorizontalPadding * 2,
          ),
        ),
      ],
    );
  }
}
