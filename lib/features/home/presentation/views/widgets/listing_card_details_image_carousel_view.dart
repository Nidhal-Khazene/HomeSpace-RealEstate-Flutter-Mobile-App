import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/assets.dart';

class ListingCardDetailsImageCarouselView extends StatefulWidget {
  const ListingCardDetailsImageCarouselView({super.key, required this.image});
  final String image;

  @override
  State<ListingCardDetailsImageCarouselView> createState() =>
      _ListingCardDetailsImageCarouselViewState();
}

class _ListingCardDetailsImageCarouselViewState
    extends State<ListingCardDetailsImageCarouselView> {
  late CarouselController _carouselController;
  late double itemExtent;

  @override
  void initState() {
    _carouselController = CarouselController();
    _carouselController.animateTo(
      150,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    itemExtent = MediaQuery.sizeOf(context).width;
    return AspectRatio(
      aspectRatio:
          MediaQuery.sizeOf(context).height *
          0.38 /
          MediaQuery.sizeOf(context).width,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width - kHorizontalPadding * 2,
        child: Stack(
          children: [
            CarouselView(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              itemSnapping: true,
              controller: _carouselController,
              itemExtent: MediaQuery.sizeOf(context).width,
              children: List.generate(
                4,
                (index) => const Image(
                  image: AssetImage(Assets.assetsImagesListingCardDetails),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
