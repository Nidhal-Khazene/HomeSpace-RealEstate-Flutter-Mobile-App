import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_search_bar.dart';

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
        const SizedBox(height: 46),
        const CustomSearchBar(
          textContent: "Search Address, City or Postal code",
        ),
        const SizedBox(height: 37),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.assetsImagesIconsLocationAddedIcon),
            const SizedBox(width: 8),
            Text(
              "Use Current Location",
              style: AppStyles.regular12.copyWith(
                color: ColorsData.kPrimaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
