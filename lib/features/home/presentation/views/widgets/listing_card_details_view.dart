import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_arrow_back_button.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/core/widgets/custom_circle_container.dart';
import 'package:home_space/core/widgets/custom_oval_container.dart';
import 'package:home_space/core/widgets/custom_three_dots.dart';
import 'package:home_space/features/home/presentation/views/widgets/listing_card_details_carousel_view.dart';

import 'Listing_card_properties_row.dart';
import 'listing_card_details_personal_list_tile.dart';

class ListingCardDetailsView extends StatelessWidget {
  const ListingCardDetailsView({super.key});

  static const String routeName = "ListingCardDetailsView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 12,
              offset: Offset(5, 0),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  verticalPadding: 0,
                  height: 38,
                  width: 117,
                  textContent: "Send enquiry",
                  textStyle: AppStyles.regular12.copyWith(color: Colors.white),
                  colorBackground: ColorsData.kSecondaryColor,
                ),
                CustomCircleContainer(
                  backgroundColor: Colors.transparent,
                  borderColor: ColorsData.kBorderColor,
                  widget: CustomThreeDots(),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomArrowBackButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    CustomOvalContainer(
                      height: 40,
                      width: 40,
                      colorBackground: Colors.transparent,
                      borderColor: ColorsData.kBorderColor,
                      widget: SvgPicture.asset(
                        Assets.assetsImagesIconsHeartBlackOutlinedIcon,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                const ListingCardDetailsCarouselView(),
                const SizedBox(height: 24),
                Text(
                  r"$450/Week",
                  style: AppStyles.medium12.copyWith(
                    color: ColorsData.kSecondaryColor,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "4519 Washington Ave. Manchester, Kentucky 39494",
                  style: AppStyles.medium16,
                ),
                const SizedBox(height: 16),
                const ListingCardPropertiesRow(),
                const SizedBox(height: 24),
                const ListingCardDetailsPersonalListTile(),
                const SizedBox(height: 24),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'That\'s it! You\'re now ready to dive into the world of real estate with our app. Enjoy exploring properties, finding your dream home, and making informed decisions.',
                        style: TextStyle(
                          color: Color(0xFF8C8B8B),
                          fontSize: 12,
                          fontFamily: 'GT Walsheim Pro',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Read More',
                        style: TextStyle(
                          color: Color(0xFF4360F6) /* Primary-Red-100 */,
                          fontSize: 12,
                          fontFamily: 'GT Walsheim Pro',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 62),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
