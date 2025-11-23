import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'listing_card_property_with_value.dart';

class ListingCardPropertiesRow extends StatelessWidget {
  const ListingCardPropertiesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ListingCardPropertyWithValue(
          property: Assets.assetsImagesIconsBedRoomIcon,
          value: "3",
        ),
        SizedBox(width: 16),
        ListingCardPropertyWithValue(
          property: Assets.assetsImagesIconsBathRoomIcon,
          value: "2",
        ),
        SizedBox(width: 16),
        ListingCardPropertyWithValue(
          property: Assets.assetsImagesIconsCarIcon,
          value: "2",
        ),
        SizedBox(width: 16),
        ListingCardPropertyWithValue(
          property: Assets.assetsImagesIconsTwoCardsIcon,
          value: "1200sqt",
        ),
      ],
    );
  }
}
