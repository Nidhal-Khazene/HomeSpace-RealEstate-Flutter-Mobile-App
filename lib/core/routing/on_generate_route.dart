import 'package:flutter/material.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/features/auth/presentation/views/finish_sign_up_view.dart';
import 'package:home_space/features/auth/presentation/views/login_view.dart';
import 'package:home_space/features/auth/presentation/views/widgets/login_or_sign_up_password.dart';
import 'package:home_space/features/auth/presentation/views/widgets/password_reset_link_view.dart';
import 'package:home_space/features/auth/presentation/views/widgets/reset_password_view.dart';
import 'package:home_space/features/auth/presentation/views/widgets/turn_on_notification_view.dart';
import 'package:home_space/features/home/presentation/views/home_view.dart';
import 'package:home_space/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:home_space/features/home/presentation/views/widgets/listing_card_details_image_view.dart';
import 'package:home_space/features/home/presentation/views/widgets/listing_card_details_view.dart';
import 'package:home_space/features/home/presentation/views/widgets/send_enquiry_view.dart';
import 'package:home_space/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:home_space/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:home_space/features/splash/presentation/views/splash_view.dart';

import '../../features/home/presentation/views/widgets/send_enquiry_success_view.dart';

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
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
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case CustomBottomNavigationBar.routeName:
      return MaterialPageRoute(
        builder: (context) => const CustomBottomNavigationBar(),
      );
    case ListingCardDetailsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ListingCardDetailsView(),
      );
    case ListingCardDetailsImageView.routeName:
      final String image = Assets.assetsImagesListingCardDetails;
      return MaterialPageRoute(
        builder: (context) => ListingCardDetailsImageView(image: image),
      );
    case SendEnquiryView.routeName:
      return MaterialPageRoute(builder: (context) => const SendEnquiryView());
    case SendEnquirySuccessView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SendEnquirySuccessView(),
      );

    default:
      return null;
  }
}
