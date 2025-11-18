import 'package:flutter/material.dart';
import 'package:home_space/features/auth/presentation/views/finish_sign_up_view.dart';
import 'package:home_space/features/auth/presentation/views/login_view.dart';
import 'package:home_space/features/auth/presentation/views/widgets/login_or_sign_up_password.dart';
import 'package:home_space/features/auth/presentation/views/widgets/password_reset_link_view.dart';
import 'package:home_space/features/auth/presentation/views/widgets/reset_password_view.dart';
import 'package:home_space/features/auth/presentation/views/widgets/turn_on_notification_view.dart';
import 'package:home_space/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:home_space/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:home_space/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case LoginOrSignUpPassword.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginOrSignUpPassword(),
      );
    case FinishSignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const FinishSignUpView());
    case TurnOnNotification.routeName:
      return MaterialPageRoute(
        builder: (context) => const TurnOnNotification(),
      );
    case ResetPasswordView.routeName:
      return MaterialPageRoute(builder: (context) => const ResetPasswordView());
    case PasswordResetLinkView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PasswordResetLinkView(),
      );
    case OnBoardingPageView.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingPageView(),
      );
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
