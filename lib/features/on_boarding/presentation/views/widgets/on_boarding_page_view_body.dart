import 'package:flutter/material.dart';

class OnBoardingPageViewBody extends StatelessWidget {
  const OnBoardingPageViewBody({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [Placeholder(), Placeholder()],
    );
  }
}
