import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/widgets/custom_app_bar.dart';
import 'package:home_space/core/widgets/custom_button.dart';
import 'package:home_space/core/widgets/custom_text_field.dart';
import 'package:home_space/features/home/presentation/views/widgets/listing_card_details_personal_list_tile.dart';

class SendEnquiryView extends StatelessWidget {
  const SendEnquiryView({super.key});

  static const routeName = "sendEnquiry";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(
            children: [
              CustomAppBar(title: "Send a Message"),
              SizedBox(height: 32),
              ListingCardDetailsPersonalListTile(),
              SizedBox(height: 32),
              CustomTextField(textContent: "Your Name"),
              SizedBox(height: 8),
              CustomTextField(textContent: "Your Message", maxLines: 7),
              SizedBox(height: 32),
              CustomButton(textContent: "Send Enquiry"),
            ],
          ),
        ),
      ),
    );
  }
}
