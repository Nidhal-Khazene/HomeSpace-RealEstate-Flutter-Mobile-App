import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/colors.dart';

class ListingCardDetailsImageView extends StatelessWidget {
  const ListingCardDetailsImageView({super.key});

  static const routeName = "ListingCardDetailsImageView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsData.kFontPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(),
        ),
      ),
    );
  }
}
