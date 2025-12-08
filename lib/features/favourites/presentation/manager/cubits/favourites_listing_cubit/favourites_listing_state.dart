part of 'favourites_listing_cubit.dart';

@immutable
sealed class FavouritesListingState {}

final class FavouritesListingInitial extends FavouritesListingState {}

final class FavouritesListingLoading extends FavouritesListingState {}

final class FavouritesListingFailure extends FavouritesListingState {}

final class FavouritesListingSuccess extends FavouritesListingState {
  final List<ListingCardModel> listingCardList;

  FavouritesListingSuccess({required this.listingCardList});
}
