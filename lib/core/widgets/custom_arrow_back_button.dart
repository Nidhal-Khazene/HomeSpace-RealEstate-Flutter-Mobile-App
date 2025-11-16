import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_space/core/utils/assets.dart';

import '../utils/colors.dart';

class CustomArrowBackButton extends StatelessWidget {
  const CustomArrowBackButton({super.key, required this.onTap});
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          decoration: const ShapeDecoration(
            shape: OvalBorder(side: BorderSide(color: Color(0xFFE9E8E8))),
          ),
          height: 40,
          width: 40,
          child: Center(
            child: SvgPicture.asset(
              Assets.assetsImagesIconsArrowBack,
              colorFilter: ColorFilter.mode(
                ColorsData.kPrimaryColorFont,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
