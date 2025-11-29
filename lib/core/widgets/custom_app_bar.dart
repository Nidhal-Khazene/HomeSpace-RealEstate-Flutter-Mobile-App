import 'package:flutter/material.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_go_back_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomGoBackButton(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(width: 69),
        Text(title, style: AppStyles.medium16),
      ],
    );
  }
}
