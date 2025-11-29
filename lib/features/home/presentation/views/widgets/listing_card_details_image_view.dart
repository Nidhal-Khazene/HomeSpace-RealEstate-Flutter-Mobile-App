import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/features/home/presentation/views/widgets/listing_card_details_image_carousel_view.dart';

class ListingCardDetailsImageView extends StatelessWidget {
  const ListingCardDetailsImageView({super.key, required this.image});

  final String image;

  static const routeName = "ListingCardDetailsImageView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsData.kFontPrimaryColor,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: kHorizontalPadding,
            right: kHorizontalPadding,
            top: 16,
          ),
          child: Column(
            children: [
              ListingCardDetailsImageHeader(),
              SizedBox(height: 130),
              ListingCardDetailsImageCarouselView(
                image: Assets.assetsImagesListingCardDetails,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
