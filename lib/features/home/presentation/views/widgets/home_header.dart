import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/widgets/custom_oval_container.dart';

import 'home_header_location_bar.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(Assets.assetsImagesPersonalAccount),
        ),
        const SizedBox(width: 50),
        const HomeHeaderLocationBar(),
        const SizedBox(width: 50),
        CustomOvalContainer(
          width: 40,
          height: 40,
          widget: SvgPicture.asset(Assets.assetsImagesIconsNotificationIcon),
          colorBackground: Colors.transparent,
          borderColor: ColorsData.kBorderColor,
        ),
      ],
    );
  }
}
