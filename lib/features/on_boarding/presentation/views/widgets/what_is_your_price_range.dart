import 'package:flutter/material.dart';
import 'package:home_space/core/utils/styles.dart';

class WhatIsYourPriceRange extends StatelessWidget {
  const WhatIsYourPriceRange({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("What's your price range ?", style: AppStyles.medium24),
        const SizedBox(height: 40),
        Text("Price", style: AppStyles.medium16),
        const SizedBox(height: 16),
      ],
    );
  }
}
