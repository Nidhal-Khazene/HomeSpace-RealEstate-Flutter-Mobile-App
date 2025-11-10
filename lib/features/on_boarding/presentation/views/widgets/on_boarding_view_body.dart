import 'package:flutter/material.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/widgets/custom_button.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(
                image: AssetImage(Assets.assetsImagesOnBoardingImage),
                fit: BoxFit.fill,
              ),
            ),
            height: MediaQuery.sizeOf(context).height * .5,
          ),
          const SizedBox(height: 59),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Discover your dream home',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1F1F1F) /* Black-100 */,
                fontSize: 32,
                fontFamily: 'xGT Walsheim Pro',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Discover how to navigate our app \'s features and make the most of your real estate journey.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF8C8B8B) /* Black-50 */,
                fontSize: 14,
                fontFamily: 'GT Walsheim Pro',
                fontWeight: FontWeight.w400,
                height: 1.60,
              ),
            ),
          ),
          const SizedBox(height: 48),
          const CustomButton(),
        ],
      ),
    );
  }
}
