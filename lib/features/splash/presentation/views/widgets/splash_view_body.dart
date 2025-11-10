import 'package:flutter/material.dart';
import 'package:home_space/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:home_space/features/splash/presentation/views/widgets/sliding_logo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return SlidingLogo();
  }

  void executeNavigation() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }
}
