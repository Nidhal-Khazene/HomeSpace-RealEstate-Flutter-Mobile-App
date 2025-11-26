import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_go_back_button.dart';
import 'package:home_space/features/home/presentation/views/widgets/listing_card_details_carousel_view.dart';

class ListingCardDetailsImageView extends StatelessWidget {
  const ListingCardDetailsImageView({super.key, required this.image});
  final String image;

  static const routeName = "ListingCardDetailsImageView";

  @override
  Widget build(BuildContext context) {
    final img = image ?? ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      backgroundColor: ColorsData.kFontPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: kHorizontalPadding,
            right: kHorizontalPadding,
            top: 16,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CustomGoBackButton(
                    widget: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width:
                        ((MediaQuery.sizeOf(context).width -
                                kHorizontalPadding) /
                            2) -
                        24 * 2,
                  ),
                  Text(
                    "1/5",
                    style: AppStyles.medium16.copyWith(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 130),
              ListingCardDetailsCarouselView(
                image: Assets.assetsImagesListingCardDetails,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
