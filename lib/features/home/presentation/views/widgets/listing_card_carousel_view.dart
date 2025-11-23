import 'package:flutter/material.dart';

class ListingCardCarouselView extends StatelessWidget {
  const ListingCardCarouselView({
    super.key,
    required CarouselController carouselController,
    required this.image,
  }) : _carouselController = carouselController;

  final CarouselController _carouselController;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: CarouselView(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        itemSnapping: true,
        controller: _carouselController,
        itemExtent: MediaQuery.sizeOf(context).width,
        children: List.generate(
          4,
          (index) => Image(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
