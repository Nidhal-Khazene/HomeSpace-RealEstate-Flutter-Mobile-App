import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/models/list_tile_model.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/features/favourites/presentation/views/widgets/favourites_list_tile_item.dart';

class FavouritesViewBody extends StatelessWidget {
  const FavouritesViewBody({super.key});

  static final List<ListTileModel> list = [
    ListTileModel(title: "Apartment in Uk", subtitle: "10 Locations"),
    ListTileModel(title: "Rental in Florida", subtitle: "5 Locations"),
    ListTileModel(title: "New listings", subtitle: "24 Locations"),
    ListTileModel(title: "Apartment in Chicago", subtitle: "10 Locations"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPrimaryScreenPadding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Your List", style: AppStyles.medium16),
              Text(
                "New List",
                style: AppStyles.medium16.copyWith(
                  color: ColorsData.kSecondaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Column(
            spacing: 12,
            children: List.generate(
              4,
              (index) => FavouritesListTileItem(
                title: list[index].title!,
                subtitle: list[index].subtitle!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
