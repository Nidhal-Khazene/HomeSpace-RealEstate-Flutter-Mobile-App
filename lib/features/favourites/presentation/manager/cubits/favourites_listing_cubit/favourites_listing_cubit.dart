import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../../core/models/listing_card_model.dart';
import '../../../../../../core/utils/assets.dart';

part 'favourites_listing_state.dart';

class FavouritesListingCubit extends Cubit<FavouritesListingState> {
  FavouritesListingCubit() : super(FavouritesListingInitial());
  final List<ListingCardModel> listingCardList = [
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
  void fetchFavouritesListing() {
    emit(FavouritesListingLoading());
  }
}
