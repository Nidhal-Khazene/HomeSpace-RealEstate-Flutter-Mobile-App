import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_app_bar.dart';

class FavouritesListTileItemDetails extends StatelessWidget {
  const FavouritesListTileItemDetails({super.key});

  static const String routeName = "FavouritesListTileItemDetails";

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
            ],
          ),
        ),
      ),
    );
  }
}
