import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_oval_container.dart';

class WhatAreYouLookingForView extends StatelessWidget {
  const WhatAreYouLookingForView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text("What are you looking for ?", style: AppStyles.medium24),
        const SizedBox(height: 12),
        Text(
          "We’ll start with these listings, you can change them later.",
          style: AppStyles.regular12.copyWith(
            color: ColorsData.kSecondaryColorFont,
          ),
        ),
        const SizedBox(height: 51),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 55 - kHorizontalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomOvalContainer(textContent: "Buy"),
              const SizedBox(width: 71),
              CustomOvalContainer(
                textContent: "Rent",
                textContentColor: ColorsData.kPrimaryColor,
                colorBackground: Colors.transparent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
