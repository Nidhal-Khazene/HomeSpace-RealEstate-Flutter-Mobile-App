import 'package:flutter/material.dart';
import 'package:home_space/features/on_boarding/presentation/views/widgets/what_are_you_looking_for_view.dart';

class OnBoardingPageViewBody extends StatelessWidget {
  const OnBoardingPageViewBody({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [WhatAreYouLookingForView(), Placeholder()],
    );
  }
}
