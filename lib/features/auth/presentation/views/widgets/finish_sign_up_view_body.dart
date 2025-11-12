import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:home_space/core/utils/styles.dart';
import 'package:home_space/core/widgets/custom_arrow_back_button.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/core/widgets/custom_text_field.dart';
import 'package:home_space/features/auth/presentation/views/widgets/login_or_sign_up_password.dart';
import 'package:home_space/features/auth/presentation/views/widgets/turn_on_notification_view.dart';

class FinishSignUpViewBody extends StatelessWidget {
  const FinishSignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(
                context,
                LoginOrSignUpPassword.routeName,
              );
            },
            child: const CustomArrowBackButton(),
          ),
          const SizedBox(height: 35),
          Text("Finish Signup", style: AppStyles.medium32),
          const SizedBox(height: 32),
          const CustomTextField(textContent: "Firstname"),
          const SizedBox(height: 12),
          const CustomTextField(textContent: "Lastname"),
          const SizedBox(height: 12),
          CustomTextField(
            textContent: "Katrinabennet21@gmail.com",
            textContentColor: kPrimaryColorFont,
          ),
          const SizedBox(height: 12),
          const CustomTextField(textContent: "Password"),
          const SizedBox(height: 12),
          Text("Must be 8 characters", style: AppStyles.regular12),
          const SizedBox(height: 32),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "By selecting agree and Continue , you accept our ",
                  style: AppStyles.regular14,
                ),
                TextSpan(
                  text: "terms and condition",
                  style: AppStyles.regular14.copyWith(
                    color: const Color(0xFF4360F6),
                  ),
                ),
                const TextSpan(text: "."),
              ],
            ),
          ),
          const SizedBox(height: 32),
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, TurnOnNotification.routeName);
            },
            child: CustomButton(
              textContentColor: ColorsData.kPrimaryColor,
              textContent: "Agree and Continue",
              colorBackground: Color(0xffF2F4FD),
            ),
          ),
        ],
      ),
    );
  }
}
