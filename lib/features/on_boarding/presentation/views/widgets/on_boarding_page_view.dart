import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/features/on_boarding/presentation/views/widgets/on_boarding_page_view_body.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  static const String routeName = "OnBoardingPageView";
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: kHorizontalPadding,
            right: kHorizontalPadding,
            bottom: kBottomPadding,
          ),
          child: Column(
            children: [
              Expanded(
                child: OnBoardingPageViewBody(pageController: pageController),
              ),
              const CustomButton(textContent: "Continue"),
              const SizedBox(height: 12),
              const CustomButton(textContent: "Skip"),
            ],
          ),
        ),
      ),
    );
  }
}
