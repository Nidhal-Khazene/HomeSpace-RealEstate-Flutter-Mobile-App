import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class ListingCard extends StatefulWidget {
  const ListingCard({super.key});

  @override
  State<ListingCard> createState() => _ListingCardState();
}

class _ListingCardState extends State<ListingCard> {
  late CarouselController _carouselController;
  @override
  void initState() {
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  void dispose() {
    _carouselController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:
          MediaQuery.sizeOf(context).height *
          0.60 /
          MediaQuery.sizeOf(context).width,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFE9E8E8)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: CarouselView(
                controller: _carouselController,
                itemExtent: 4,
                children: [
                  const Image(
                    image: AssetImage(
                      Assets.assetsImagesListingBackgroundImage1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
