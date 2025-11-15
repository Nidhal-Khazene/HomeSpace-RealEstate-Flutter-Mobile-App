import 'package:flutter/material.dart';
import 'package:home_space/features/on_boarding/presentation/views/widgets/on_boarding_page_view_body.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  static const String routeName = "OnBoardingPageView";
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: OnBoardingPageViewBody(pageController: pageController),
          ),
        ],
      ),
    );
  }
}
