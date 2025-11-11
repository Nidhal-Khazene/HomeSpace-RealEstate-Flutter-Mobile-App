import 'package:flutter/material.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/features/auth/presentation/views/login_view.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Discover your dream home',
              textAlign: TextAlign.center,
              style: AppStyles.medium32,
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Discover how to navigate our app \'s features and make the most of your real estate journey.',
              textAlign: TextAlign.center,
              style: AppStyles.regular14.copyWith(
                color: const Color(0xFF8C8B8B),
              ),
            ),
          ),
          const SizedBox(height: 48),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, LoginView.routeName);
            },
            child: const CustomButton(colorBackground: Color(0xff4360f6)),
          ),
        ],
      ),
    );
  }
}
