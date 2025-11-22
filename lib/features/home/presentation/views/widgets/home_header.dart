import 'package:flutter/material.dart';
import 'package:home_space/core/utils/assets.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(Assets.assetsImagesPersonalAccount),
        ),
      ],
    );
  }
}
