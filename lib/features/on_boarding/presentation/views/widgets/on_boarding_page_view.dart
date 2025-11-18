import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/features/on_boarding/presentation/views/widgets/on_boarding_page_view_body.dart';
import 'package:home_space/features/on_boarding/presentation/views/widgets/on_boarding_page_view_header.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key});

  static const String routeName = "OnBoardingPageView";

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
    super.initState();
  }

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
              OnBoardingPageViewHeader(currentPage: currentPage),
              Expanded(
                child: OnBoardingPageViewBody(pageController: _pageController),
              ),
              const CustomButton(textContent: "Continue"),
              const SizedBox(height: 12),
              CustomButton(
                textContent: "Skip",
                textContentColor: ColorsData.kPrimaryColor,
                colorBackground: Colors.transparent,
                borderColor: ColorsData.kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
