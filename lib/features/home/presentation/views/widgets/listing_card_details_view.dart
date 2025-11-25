import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/widgets/custom_arrow_back_button.dart';
import 'package:home_space/core/widgets/custom_oval_container.dart';

class ListingCardDetailsView extends StatelessWidget {
  const ListingCardDetailsView({super.key});

  static const String routeName = "ListingCardDetailsView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
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
            ],
          ),
        ),
      ),
    );
  }
}
