import 'package:flutter/material.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static const String nameRoute = "/splashView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsData.kPrimaryColor,
      body: Center(child: Image.asset(Assets.assetsImagesSplashLogo)),
    );
  }
}
