import 'package:flutter/material.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_arrow_back_button.dart';

class OnBoardingPageViewHeader extends StatelessWidget {
  const OnBoardingPageViewHeader({
    super.key,
    required this.currentPage,
    required this.backPressed,
  });

  final int currentPage;
  final VoidCallback backPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 121,
      children: [
        currentPage + 1 == 1
            ? const SizedBox(width: 40, height: 40)
            : CustomArrowBackButton(
                onTap: () {
                  backPressed();
                },
              ),
        Text("${currentPage + 1}/5", style: AppStyles.regular12),
      ],
    );
  }
}
