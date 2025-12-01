import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/features/home/presentation/views/home_view.dart';

class SendEnquirySuccessView extends StatelessWidget {
  const SendEnquirySuccessView({super.key});

  static const routeName = "sendEnquirySuccessView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(
            children: [
              const SizedBox(height: 278),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 59 - 24),
                child: Column(
                  children: [
                    SvgPicture.asset(Assets.assetsImagesIconsSuccessButton),
                    const SizedBox(height: 24),
                    Text(
                      "Your enquiry has been sent ",
                      textAlign: TextAlign.center,
                      style: AppStyles.medium24,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 238),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, HomeView.routeName);
                },
                textContent: "Return To Home",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
