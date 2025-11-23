import 'package:flutter/material.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';

import 'listing_card_carousel_view.dart';

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
    _carouselController.animateTo(
      150,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:
          MediaQuery.sizeOf(context).height *
          0.55 /
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
            ListingCardCarouselView(carouselController: _carouselController),
            Positioned(
              top: 12,
              left: 12,
              child: Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 12,
                ),
                child: Text(
                  "For Sale",
                  style: AppStyles.medium10.copyWith(
                    color: ColorsData.kPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
