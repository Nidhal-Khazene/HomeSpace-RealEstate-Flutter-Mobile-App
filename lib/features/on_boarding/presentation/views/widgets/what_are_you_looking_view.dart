import 'package:flutter/material.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';

class WhatAreYouLookingView extends StatelessWidget {
  const WhatAreYouLookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text("Where are you looking?", style: AppStyles.medium24),
        const SizedBox(height: 12),
        Text(
          "You can enter cities, neighbourhoods, zip codes and more",
          style: AppStyles.regular12.copyWith(
            color: ColorsData.kSecondaryColorFont,
          ),
        ),
      ],
    );
  }
}
