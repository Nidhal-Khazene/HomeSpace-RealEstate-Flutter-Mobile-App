import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class SlidingLogo extends StatelessWidget {
  const SlidingLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(Assets.assetsImagesSplashLogo));
  }
}
