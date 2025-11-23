import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class ListingCardCarouselView extends StatelessWidget {
  const ListingCardCarouselView({
    super.key,
    required CarouselController carouselController,
  }) : _carouselController = carouselController;

  final CarouselController _carouselController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 198,
      child: CarouselView(
        itemSnapping: true,
        controller: _carouselController,
        itemExtent: MediaQuery.sizeOf(context).width,
        children: List.generate(
          4,
          (index) => const Image(
            image: AssetImage(Assets.assetsImagesListingBackgroundImage1),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
