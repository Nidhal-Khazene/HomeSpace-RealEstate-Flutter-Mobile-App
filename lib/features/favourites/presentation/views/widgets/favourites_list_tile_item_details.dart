import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/models/listing_card_model.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_app_bar.dart';
import 'package:home_space/features/favourites/presentation/views/widgets/favourites_listing_card.dart';

class FavouritesListTileItemDetails extends StatelessWidget {
  const FavouritesListTileItemDetails({super.key});

  static const String routeName = "FavouritesListTileItemDetails";
  static final List<ListingCardModel> listingCardList = [
    ListingCardModel(
      title: "2715 Ash Dr. San Jose, South Dakota 83475",
      image: Assets.assetsImagesListTileImagesImage1,
      price: 650,
    ),
    ListingCardModel(
      title: "2118 Thornridge Cir. Syracuse, Connecticut 35624",
      image: Assets.assetsImagesListTileImagesImage2,
      price: 450,
    ),
    ListingCardModel(
      title: "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
      image: Assets.assetsImagesListTileImagesImage3,
      price: 850,
    ),
    ListingCardModel(
      title: "3891 Ranchview Dr. Richardson, California 62639",
      image: Assets.assetsImagesListTileImagesImage4,
      price: 700,
    ),
    ListingCardModel(
      title: "8502 Preston Rd. Inglewood, Maine 98380",
      image: Assets.assetsImagesListTileImagesImage5,
      price: 420,
    ),
    ListingCardModel(
      title: "6391 Elgin St. Celina, Delaware 10299",
      image: Assets.assetsImagesListTileImagesImage6,
      price: 470,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(
            children: [
              CustomAppBar(
                title: "Apartment in Uk",
                textStyle: AppStyles.medium16,
                widthFromBackButton: 68,
              ),
              const SizedBox(height: 24),
              FavouritesListingCard(
                title: listingCardList[0].title!,
                image: listingCardList[0].image!,
                price: listingCardList[0].price!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
