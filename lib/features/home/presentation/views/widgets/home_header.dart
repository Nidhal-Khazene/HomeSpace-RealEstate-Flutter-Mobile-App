import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_oval_container.dart';

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
        Expanded(
          child: Container(
            height: 44,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide(color: ColorsData.kBorderColor),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.assetsImagesIconsLocationIcon),
                  const Expanded(child: SizedBox(width: 8)),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      width: 81,
                      child: Text(
                        "Washington Dc",
                        style: AppStyles.regular12,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox(width: 8)),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(Assets.assetsImagesIconsArrowDown),
                  ),
                ],
              ),
            ),
          ),
        ),
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
