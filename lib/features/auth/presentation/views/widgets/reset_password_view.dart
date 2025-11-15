import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_arrow_back_button.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/core/widgets/custom_text_field.dart';
import 'package:home_space/features/auth/presentation/views/finish_sign_up_view.dart';
import 'package:home_space/features/auth/presentation/views/widgets/password_reset_link_view.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  static const String routeName = "ResetPasswordView";

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  bool readyToContinue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomArrowBackButton(
                onTap: () {
                  Navigator.popAndPushNamed(
                    context,
                    FinishSignUpView.routeName,
                  );
                },
              ),
              const SizedBox(height: 35),
              Text("Reset Password", style: AppStyles.medium32),
              const SizedBox(height: 33),
              const CustomTextField(textContent: "Enter Email Address"),
              const SizedBox(height: 12),
              CustomButton(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    PasswordResetLinkView.routeName,
                  );
                },
                textContent: "Continue",
                borderColor: Colors.transparent,
                colorBackground: ColorsData.kNotReadyButtonColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
