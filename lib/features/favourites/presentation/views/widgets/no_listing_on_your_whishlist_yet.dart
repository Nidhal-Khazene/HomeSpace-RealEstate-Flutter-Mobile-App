import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_oval_container.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NoListingOnYourWishlistYet extends StatelessWidget {
  const NoListingOnYourWishlistYet({super.key});

  static const routeName = "NoListingOnYourWishlistYet";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomOvalContainer(
                  borderColor: Colors.transparent,
                  backgroundColor: ColorsData.kLightPrimaryColor,
                  width: 104,
                  height: 104,
                  widget: Icon(
                    Iconsax.heart_search_copy,
                    color: ColorsData.kMediumPrimaryColor,
                    size: 64,
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "No listing on your wishlist yet",
                  style: AppStyles.medium32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
