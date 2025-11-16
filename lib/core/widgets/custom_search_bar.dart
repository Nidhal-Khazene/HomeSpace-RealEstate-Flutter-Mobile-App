import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.textContent});
  final String textContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: ShapeDecoration(
        color: ColorsData.kNotReadyButtonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      child: Row(
        children: [
          const SizedBox(width: 17),
          SvgPicture.asset(Assets.assetsImagesIconsSearchIcon),
          const SizedBox(width: 12),
          Text(
            textContent,
            style: AppStyles.regular12.copyWith(
              color: ColorsData.kSecondaryColorFont,
            ),
          ),
        ],
      ),
    );
  }
}
